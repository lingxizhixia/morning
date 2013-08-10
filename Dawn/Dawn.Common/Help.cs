namespace Dawn.Common
{
    #region

    using System.Web;

    #endregion
    public  class Help
    {
        /// <summary>
        /// 穿过代理服务器获取真实IP
        /// </summary>
        /// <returns></returns>
        public static string AcceptTrueIP()
        {
            string user_IP = null;
            if (HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
            {
                user_IP = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            }
            else
            {
                user_IP = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"].ToString();
            }
            return user_IP;
        }
    }
}
