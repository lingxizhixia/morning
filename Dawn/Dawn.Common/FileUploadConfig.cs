using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dawn.Common
{
    /// <summary>
    /// 文件配置类
    /// </summary>
    internal abstract class FileUploadConfig : IFileUploadConfig
    {
        /// <summary>
        /// 过滤格式数组
        /// </summary>
        private static readonly string[] postfixAllowed = null;

        /// <summary>
        /// 被允许的格式串
        /// </summary>
        protected string allowedPostfixString = null;

        /// <summary>
        /// 课程封面图片访问基URL
        /// </summary>
        public virtual string UrlBase
        {
            get { throw new NotImplementedException(); }
        }

        /// <summary>
        /// 视频封面图片的上传目录
        /// </summary>
        public virtual string Directory
        {
            get { throw new NotImplementedException(); }
        }

        /// <summary>
        /// 被过滤的文件类型
        /// </summary>
        public virtual IList<string> PostfixAllowed
        {
            get
            {
                return postfixAllowed;
            }
        }

        /// <summary>
        /// 获取文件上传的完整文件名
        /// </summary>
        /// <param name="filename">文件名</param>
        /// <returns>完整文件名</returns>
        public virtual string GetPath(string filename)
        {
            return this.Directory + filename;
        }

        /// <summary>
        /// 获取请求地址
        /// </summary>
        /// <param name="filename">文件名</param>
        /// <returns>请求地址</returns>
        public virtual string GetUrl(string filename)
        {
            return this.UrlBase + filename;
        }

        /// <summary>
        /// 判断是否被允许的格式
        /// </summary>
        /// <param name="postfix">格式</param>
        /// <returns>是否被允许的</returns>
        public virtual bool IsAllowedPostfix(string postfix)
        {
            return this.PostfixAllowed == null || this.PostfixAllowed.Any(s => s == postfix);
        }

        /// <summary>
        /// 获取被允许的格式串
        /// <para>用 , 隔开</para>
        /// </summary>
        /// <returns>
        /// 格式串
        /// <para>例如：jpg,gif</para>
        /// </returns>
        public virtual string GetAllowedPostfixString()
        {
            if (this.allowedPostfixString == null)
            {
                this.allowedPostfixString = (this.PostfixAllowed != null) ? string.Join(",", this.PostfixAllowed).Replace(".", "") : string.Empty;
            }

            return this.allowedPostfixString;
        }
    }
}
