//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

namespace Dawn.Core.Common
{
    #region

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.IO;
    using System.Net;
    using Dawn.Common;
    using System.Web;
    using System.Web.UI.WebControls;

    #endregion

    /// <summary>
    /// 跨域上传文件 利用WebRequest WebResponse对象
    /// 内部类 请利用PictureHelper图片上传帮助类调用上传 查看功能
    /// </summary>
    internal class CrossDomainUploadUtility
    {
        #region 私有字段
       
        /// <summary>
        /// 文件上传服务器路径
        /// </summary>
        private string sPOstDataUrl = "http://localhost/FileUpLoad/FileUpload.ashx";

        /// <summary>
        /// 上传文件保存路径
        /// </summary>
        private readonly string sSavePath = "SavePath";

        /// <summary>
        /// 上传文件格式
        /// </summary>
        private string sFormat = "";

        #endregion

        #region 属性访问器

        /// <summary>
        /// 获取或设置 上传服务器的URL
        /// </summary>
        internal string POstDataUrl { get { return this.sPOstDataUrl; } set { this.sPOstDataUrl = value; } }

        #endregion

        #region 构造函数

        internal CrossDomainUploadUtility()
        {

        }

        internal CrossDomainUploadUtility(string psPictureServerUrl)
        {
            this.sPOstDataUrl = psPictureServerUrl;
        }

        #endregion

        #region 跨域上传

        /// <summary>
        /// 跨域上传 并返回上传结果
        /// </summary>
        /// <param name="pstream">需要上传的文件对应的流</param>
        /// <param name="psFileName">上传的文件名 不带路径</param>
        /// <param name="psUploadServerUrl">上传的目标服务器URL</param>
        /// <returns>服务器返回值</returns>
        internal string UploadFile(Stream pstream, string psFileName, string psUploadServerUrl)
        {
            byte[] postData = new byte[4096];
            MemoryStream memory = new MemoryStream();
            int nTotalByte = 0;
            int nReadCount = pstream.Read(postData, 0, postData.Length);
            while (nReadCount > 0)
            {
                memory.Write(postData, 0, nReadCount);
                nReadCount = pstream.Read(postData, 0, postData.Length);
                nTotalByte += nReadCount;
            }
            pstream.Close();
            pstream.Dispose();

            memory.Position = 0;
            sFormat = System.IO.Path.GetExtension(psFileName);
            //通过URL传递部分参数
            psUploadServerUrl = string.Format(psUploadServerUrl + "?format={0}&savepath={1}", sFormat, sSavePath);

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(psUploadServerUrl);
            request.Method = "POST";
            
            request.ContentLength = memory.Length;
            
            CookieContainer container = new CookieContainer();
            request.CookieContainer = container;
            request.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";
            request.KeepAlive = true;
            request.Referer = "http://www.google.com.hk";
            request.MaximumAutomaticRedirections = 1;
            request.AllowAutoRedirect = true;
            request.Credentials = CredentialCache.DefaultCredentials;

            using (Stream s = request.GetRequestStream())
            {
                s.Write(memory.ToArray(), 0, (int)memory.Length);
                memory.Close();
                memory.Dispose();
            }
        
            WebResponse response = null;
            Stream stream = null;
            StreamReader sr = null;
            string sResponseText = "error";
            try
            {
                response = request.GetResponse();
                stream = response.GetResponseStream();
                sr = new StreamReader(stream);
                sResponseText = sr.ReadToEnd();
            }
            catch (IOException ex) { }
            catch (OutOfMemoryException ex) { }
            catch (Exception ex) { }
            finally
            {
                if (sr != null)
                {
                    sr.Close();
                    sr.Dispose();
                    sr = null;
                }
                if (stream != null)
                {
                    stream.Close();
                    stream.Dispose();
                    stream = null;
                }
            }
         
            return sResponseText;
        }

        /// <summary>
        /// 跨域上传 并返回上传结果
        /// </summary>
        /// <param name="psFullFileName">上传的文件名 带路径</param>
        /// <param name="psUploadServerUrl">上传的目标服务器URL</param>
        /// <returns>服务器返回值</returns>
        internal string UploadFile(string psFullFileName, string psUploadServerUrl)
        {
            FileStream fs = new FileStream(psFullFileName, FileMode.Open, FileAccess.Read);
            byte[] postData = new byte[4096];
            MemoryStream memory = new MemoryStream();
            int nTotalByte = 0;
            int nReadCount = fs.Read(postData, 0, postData.Length);
            while (nReadCount > 0)
            {
                memory.Write(postData, 0, nReadCount);
                nReadCount = fs.Read(postData, 0, postData.Length);
                nTotalByte += nReadCount;
            }
            fs.Close();
            fs.Dispose();
            memory.Position = 0;
            sFormat = System.IO.Path.GetExtension(psFullFileName);
            //通过URL传递部分参数
            psUploadServerUrl = string.Format(psUploadServerUrl + "?format={0}&savepath={1}", sFormat, sSavePath);
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(psUploadServerUrl);
            request.Method = "POST";
            request.ContentLength = memory.Length;
            using (Stream s = request.GetRequestStream())
            {
                s.Write(memory.ToArray(), 0, (int)memory.Length);
                memory.Close();
                memory.Dispose();
            }

            WebResponse response = null;
            Stream stream = null;
            StreamReader sr = null;
            string sResponseText = "error";
            try
            {
                response = request.GetResponse();
                stream = response.GetResponseStream();
                sr = new StreamReader(stream);
                sResponseText = sr.ReadToEnd();
            }
            catch (IOException ex) { }
            catch (OutOfMemoryException ex) { }
            catch (Exception ex) { }
            finally
            {
                if (sr != null)
                {
                    sr.Close();
                    sr.Dispose();
                    sr = null;
                }
                if (stream != null)
                {
                    stream.Close();
                    stream.Dispose();
                    stream = null;
                }
            }

            return sResponseText;
        }

        #endregion

        #region 获取图片

        /// <summary>
        /// 获取保存在服务器上的图片
        /// </summary>
        /// <param name="psPictureName">图片名称</param>
        /// <param name="category">图片类型 如：商品图片、代理LOGO</param>
        /// <param name="psPictureServerUrl">图片服务器URL</param>
        /// <returns>图片URL</returns>
        internal byte[] GetPictureBytes(string psPictureName, ImageCategory category, string psPictureServerUrl)
        {
            byte[] arrPic = null;
            string sPictureUrl = GetPictureUrlByServer(psPictureName, category, psPictureServerUrl);
            WebClient client = new WebClient();
            try
            {
                arrPic = client.DownloadData(sPictureUrl);
            }
            catch (Exception ex) { }

            return arrPic;
        }

        /// <summary>
        /// 通过调用图片服务器接口 获取图片URL
        /// </summary>
        /// <param name="psPictureName">图片名称</param>
        /// <param name="category">图片类型 如：商品图片、代理LOGO</param>
        /// <param name="psPictureServerUrl">图片服务器URL</param>
        /// <returns>URL</returns>
        internal string GetPictureUrlByServer(string psPictureName, ImageCategory category, string psPictureServerUrl)
        {
            string sPictureUrl = "error";

            psPictureServerUrl = string.Format(psPictureServerUrl + "?picture={0}&savepath={1}&category={2}", psPictureName, sSavePath, (int)category);

            HttpWebRequest request = null;
            WebResponse response = null;
            Stream stream = null;
            StreamReader sr = null;
            try
            {
                request = (HttpWebRequest)WebRequest.Create(psPictureServerUrl);
                request.Method = "GET";
                response = request.GetResponse();
                stream = response.GetResponseStream();
                sr = new StreamReader(stream);
                sPictureUrl = sr.ReadToEnd();
            }
            catch (IOException ex) { }
            catch (OutOfMemoryException ex) { }
            catch (Exception ex) { }
            finally
            {
                if (sr != null)
                {
                    sr.Close();
                    sr.Dispose();
                    sr = null;
                }
                if (stream != null)
                {
                    stream.Close();
                    stream.Dispose();
                    stream = null;
                }
                response = null;
                request = null;
            }

            return sPictureUrl;
        }

        #endregion

        #region 上传验证

        internal UploadFileResult UploadFile(FileUpload fileUpload, string sAllowFormats, out string sPictureName)
        {
            sPictureName = "error";

            if (fileUpload.PostedFile.ContentLength <= 0)
            {
                return UploadFileResult.EmptyFile;
            }
            sFormat = System.IO.Path.GetExtension(fileUpload.FileName);
            sFormat = sFormat.Substring(1);
            if (!string.IsNullOrEmpty(sAllowFormats))
            {
                if (!this.ValidUploadFileFormat(sFormat,sAllowFormats))
                {
                    return UploadFileResult.FormatError;
                }
            }

            sPictureName = this.UploadFile(fileUpload.PostedFile.InputStream, fileUpload.FileName, sPOstDataUrl);
            if (!sPictureName.Equals("error", StringComparison.InvariantCultureIgnoreCase))
            {
                return UploadFileResult.UploadSuccess;
            }
            else
            {
                return UploadFileResult.UploadFail;
            }
        }

        /// <summary>
        /// 上传图片格式验证
        /// 目前支持 JPG|JPEG|GIF|BMP|PNG
        /// </summary>
        /// <returns></returns>
        internal bool ValidUploadFileFormat(string sFormat, string sAllowFormats)
        {
            bool bIsFormatOk = false;
            string[] arrFormats = sAllowFormats.Split('|');
            foreach (var s in arrFormats)
            {
                if (s.Equals(sFormat, StringComparison.InvariantCultureIgnoreCase))
                {
                    bIsFormatOk = true;
                    break;
                }
            }

            return bIsFormatOk;
        }

        #endregion
    }

    /// <summary>
    /// 文件上传结果 枚举
    /// </summary>
    public enum UploadFileResult
    {
        #region 结果枚举
        
        /// <summary>
        /// 空文件
        /// </summary>
        EmptyFile = 1,

        /// <summary>
        /// 格式不正确
        /// </summary>
        FormatError = 2,

        /// <summary>
        /// 上传失败
        /// </summary>
        UploadFail = 3,

        /// <summary>
        /// 上传成功
        /// </summary>
        UploadSuccess = 4

        #endregion
    }
}
