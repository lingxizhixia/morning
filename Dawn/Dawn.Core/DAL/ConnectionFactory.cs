namespace Dawn.Core.DAL
{
    #region

    using Shine.Sql.Connection;

    #endregion

    /// <summary>
    /// 数据库连接工厂类
    /// </summary>
    internal class ConnectionFactory : SqlConnectionFactory
    {
        /// <summary>
        /// 获取 默认数据库配置项名
        /// <para>目前是等同于 Main 属性器</para>
        /// </summary>
        public override string ConnectionName
        {
            get { return this.Main; }
        }
        
        /// <summary>
        /// 获取 主数据库配置项名
        /// </summary>
        internal string Main
        {
            get { return "Trade"; }
        }

        /// <summary>
        /// 游戏用户数据库
        /// </summary>
        internal string Trade
        {
            get { return "Trade"; }
        }
    }
}
