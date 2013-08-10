using System;
using System.Configuration;

namespace Dawn.Common
{
    public class AppSettings
    {
        /// <summary>
        /// 获取 AppSetting 值
        /// </summary>
        /// <param name="key">键</param>
        /// <returns>AppSetting的相应值</returns>
        public static string Get(string key)
        {
            // TODO: 缓存获取到的值

            if (key == null)
                throw new ArgumentNullException();

            var value = ConfigurationManager.AppSettings[key];

            if (value == null)
                throw new InvalidOperationException(string.Format("AppSettings 缺少配置项 {0}。", key));

            return value;
        }
    }
}