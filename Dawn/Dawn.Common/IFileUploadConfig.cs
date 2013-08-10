namespace Dawn.Common
{
    #region

    using System;
    using System.Collections.Generic;

    #endregion

    /// <summary>
    /// 文件配置接口
    /// </summary>
    interface IFileUploadConfig
    {
        /// <summary>
        /// 图片的上传目录
        /// </summary>
        string Directory { get; }

        /// <summary>
        /// 获取被允许的格式串
        /// <para>用 , 隔开</para>
        /// </summary>
        /// <returns>
        /// 格式串
        /// <para>例如：jpg,gif</para>
        /// </returns>
        string GetAllowedPostfixString();

        /// <summary>
        /// 获取文件上传的完整文件名
        /// </summary>
        /// <param name="filename">文件名</param>
        /// <returns>完整文件名</returns>
        string GetPath(string filename);

        /// <summary>
        /// 获取请求地址
        /// </summary>
        /// <param name="filename">文件名</param>
        /// <returns>请求地址</returns>
        string GetUrl(string filename);

        /// <summary>
        /// 判断是否被允许的格式
        /// </summary>
        /// <param name="postfix">格式</param>
        /// <returns>是否被允许的</returns>
        bool IsAllowedPostfix(string postfix);

        /// <summary>
        /// 被过滤的文件类型
        /// </summary>
        IList<string> PostfixAllowed { get; }

        /// <summary>
        /// 图片访问基URL
        /// </summary>
        string UrlBase { get; }
    }
}
