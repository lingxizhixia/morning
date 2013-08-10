//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

#region NameSpace

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using Dawn.Common;
using System.IO;
using System.Net;
using System.Web;
using System.Web.UI.WebControls;

#endregion

namespace Dawn.Core.Common
{
    /// <summary>
    /// 图片上传辅助类
    /// </summary>
    public class PictureHelper
    {
        #region 私有字段

        /// <summary>
        /// 默认的上传 查看图片URL
        /// </summary>
        private static readonly string _DefaultUploadUrl = "http://www.xugugame.com/FileUpLoad/FileUpload.ashx";
        private static readonly string _DefaultDownUrl = "http://www.xugugame.com/FileUpLoad/GetPicture.ashx";
        private static readonly string _DefaultFormat = "JPG|JPEG|GIF|BMP|PNG"; 

        /// <summary>
        /// 文件上传服务器路径
        /// </summary>
        private static string _POstDataUrl = ConfigurationManager.AppSettings["CrossDomainUploadUrl"] ?? _DefaultUploadUrl;

        /// <summary>
        /// 上传文件保存路径
        /// </summary>
        private static readonly string _SavePath = "SavePath";

        /// <summary>
        /// 文件上传服务器路径
        /// </summary>
        private static string _PictureServerUrl = ConfigurationManager.AppSettings["GetPictureInterfaceUrl"] ?? _DefaultDownUrl;

        /// <summary>
        /// 上传格式
        /// </summary>
        private static string _AllowFormat = ConfigurationManager.AppSettings["PictureType"] ?? _DefaultFormat;

        /// <summary>
        /// 上传工具
        /// </summary>
        private static CrossDomainUploadUtility _UploadHelper = new CrossDomainUploadUtility();

        #endregion

        #region 属性访问器

    

        #endregion

        #region 共有方法

        /// <summary>
        /// 获取图片URL
        /// </summary>
        /// <param name="psPicture"></param>
        /// <param name="category"></param>
        /// <returns></returns>
        public static string GetPictureUrl(string psPicture, ImageCategory category)
        {
            string sPictureUrl = string.Empty;
            try{
                sPictureUrl = _UploadHelper.GetPictureUrlByServer(psPicture, ImageCategory.ShopProduct, _PictureServerUrl);
            }
            catch (Exception) { sPictureUrl = string.Empty; }
            
            return sPictureUrl;
        }

        /// <summary>
        /// 图拍上传
        /// </summary>
        /// <param name="fileUpload"></param>
        /// <param name="sPictureName"></param>
        /// <returns></returns>
        public static UploadFileResult UploadFile(FileUpload fileUpload, out string sPictureName)
        {
            _UploadHelper.POstDataUrl=_POstDataUrl;
            return _UploadHelper.UploadFile(fileUpload, _AllowFormat, out sPictureName);
        }

        /// <summary>
        /// 图片格式验证
        /// </summary>
        /// <param name="sFormat"></param>
        /// <returns></returns>
        public static bool ValidUploadFileFormat(string sFormat)
        {
            return _UploadHelper.ValidUploadFileFormat(sFormat, _AllowFormat);
        }

        public static bool ValidUploadFileFormat(string sFormat,string sAllowFormats)
        {
            return _UploadHelper.ValidUploadFileFormat(sFormat, sAllowFormats);
        }

        #endregion
    }
}
