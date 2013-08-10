namespace Dawn.Core.DAL
{
    #region

    using System.Data.Common;

    #endregion

    /// <summary>
    /// 链接助手
    /// </summary>
    internal static class ConnectionHelper
    {
        /// <summary>
        /// 默认的数据库链接工厂字段
        /// </summary>
       private static ConnectionFactory connectionFactory;

        /// <summary>
        /// 获取或设置 默认的数据库链接工厂
        /// </summary>
       internal static ConnectionFactory ConnectionFactory
       {
           get
           {
               if (connectionFactory == null)
               {
                   connectionFactory = new ConnectionFactory();                   
               }

               return connectionFactory;
           }
          private  set
           {
               connectionFactory = value;
           }
       }

        /// <summary>
        /// 获取数据库链接字符串
        /// </summary>
        /// <param name="connectionName">配置链接名</param>
        /// <returns>数据库链接字符串</returns>
       internal static string GetConnectionString(string connectionName)
        {
            return ConnectionFactory.GetConnectionString(connectionName);
        }

        /// <summary>
        /// 获取数据库链接
        /// </summary>
        /// <param name="connectionName">配置链接名</param>
        /// <returns>数据库链接</returns>
       internal static DbConnection CreateSqlConnection(string connectionName)
        {
            return ConnectionFactory.CreateConnection(connectionName);
        } 
    }
}
