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
    using System.Web;
    using System.Text.RegularExpressions;

    #endregion

    /// <summary>
    /// 应用程序根目录类
    /// </summary>
    public class Path
    {
        /// <summary>
        /// 应用程序路径
        /// </summary>
        private static string sAppPath = GetApplicationPath();

        public static string ApplicationPath
        {
            get { return sAppPath; }
        }

        /// <summary>
        /// 获取应用程序的根目录 如果是猪目录 返回"" 如果是虚拟路径 返回 "/虚拟目录名称"
        /// 解决主目录以及虚拟目录中 "/"获取根目录不一致的情况
        /// </summary>
        /// <returns></returns>
        private static string GetApplicationPath()
        {
            string sPath = string.Empty;
            sPath = HttpContext.Current.Request.ApplicationPath;
            if (sPath.Equals("/")) { sPath = string.Empty; }
            return sPath;
        }
    }
}