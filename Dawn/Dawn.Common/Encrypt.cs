using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;

namespace Dawn.Common
{
    public  class Encrypt
    {
        /// <summary>
        /// 对字符串处理后再MD5加密
        /// <para >密码+202cb962ac59075b964b07152d234b70</para>
        /// <para > MD5（取前32位）+MD5(其余的位数)</para>
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string MD5Encrypt(string str)
        {
            string encryptStr = str+ "202cb962ac59075b964b07152d234b70";
            string first = encryptStr.Substring(0, 32);
            string last = encryptStr.Substring(32);
            return (FormsAuthentication.HashPasswordForStoringInConfigFile(first, "MD5") + FormsAuthentication.HashPasswordForStoringInConfigFile(last, "MD5")).ToLower();
        }
    }
}
