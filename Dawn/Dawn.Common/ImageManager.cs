namespace Dawn.Common
{
    #region
    using System;
    using System.Configuration;
    using System.Web;
    using System.Linq;
    #endregion

    /// <summary>
    /// 图片管理器
    /// </summary>
    public class ImageManager
    {
        private static readonly string[] PostfixAllowed = { ".jpeg", ".gif", ".jpg", ".bmp", ".png" };

        /// <summary>
        /// 获取图片的完整URL
        /// </summary>
        /// <param name="category">图片类别</param>
        /// <param name="filename">图片文件名</param>
        /// <returns>图片的完整URL</returns>
        public static string GetUrl(ImageCategory category, string filename)
        {
            if (filename == null)
            {
                if (category == ImageCategory.ShopProduct)
                    throw new ArgumentNullException("filename");
                else
                    filename = "default.gif";
            }

            switch (category)
            {
                case ImageCategory.ShopProduct:
                    return ShopProductPhotoUrlBase + filename;
                default:
                    throw new ArgumentOutOfRangeException("category");
            }
        }

        /// <summary>
        /// 上传图片
        /// </summary>
        /// <param name="category">图片类别</param>
        /// <param name="postedFile">上传文件信息类</param>
        /// <param name="filename">当上传成功时，输出文件名</param>
        /// <param name="msg">上传失败时的错误信息</param>
        /// <returns>指示上传是否成功</returns>
        public static bool Upload(ImageCategory category, HttpPostedFile postedFile, out string filename, out string msg)
        {
            var postfix = System.IO.Path.GetExtension(postedFile.FileName).ToLower().Trim();
            if (!PostfixAllowed.Any(s => s == postfix))
            {
                msg = "只能上传 jpeg,gif,jpg,bmp,png 格式的图片。";
                filename = string.Empty;
                return false;
            }

            filename = Guid.NewGuid().ToString("N") + postfix;
            var path = GetPath(category, filename);
            
            try
            {
                postedFile.SaveAs(path);
                msg = string.Empty;
                return true;
            }
            catch (Exception e)
            {
                msg = e.Message;
                return false;
            }
        }

        #region private
        /// <summary>
        /// 商品图片访问基URL
        /// </summary>
        private static string ShopProductPhotoUrlBase
        {
            get { return AppSettings.Get("ShopProductPhotoUrlBase"); }
        }

        /// <summary>
        /// 商品图片的上传目录
        /// </summary>
        private static string ShopProductPhotoDirectory
        {
            get { return AppSettings.Get("ShopProductPhotoDirectory"); }
        }


        /// <summary>
        /// 获取图片上传的完整文件名
        /// </summary>
        /// <param name="category">图片类别</param>
        /// <param name="filename">文件名</param>
        /// <returns>完整文件名</returns>
        private static string GetPath(ImageCategory category, string filename)
        {
            switch (category)
            {
                case ImageCategory.ShopProduct:
                    return ShopProductPhotoDirectory + filename;
                default:
                    throw new ArgumentOutOfRangeException("category");
            }
        }
        #endregion
    }
}
