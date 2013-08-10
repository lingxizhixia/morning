
#region NameSpace

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#endregion

namespace Dawn.Web.UI
{
    public class MessagPage : System.Web.UI.Page
    {
        /// <summary>
        /// 消息辅助类
        /// </summary>
        protected IMessageBase MessageHelper = MessageFactory.Create(MessageImplement.JBOX);

        /// <summary>
        /// 数据验证提示信息
        /// </summary>
        protected readonly string TIP_SUCCESS = "<span class='tips-right'>&nbsp;</span>";
        protected readonly string TIP_FALSE = "<span class='tips-error'>{0}</span>";

        #region 获取应用程序路径

        private static string _AppPath = GetApplicationPath();
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

        #endregion
       
    }
}
