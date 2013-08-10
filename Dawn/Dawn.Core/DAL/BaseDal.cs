namespace Dawn.Core.DAL
{
    #region

    using System.Data.Common;
    using Shine.Sql.Linq;

    #endregion

    /// <summary>
    /// Dal 基础类
    /// </summary>
    /// <typeparam name="T">对应表实体</typeparam>
    public class BaseDal<T> : LinqHelper<T> where T : class
    {
        /// <summary>
        /// 初始化一个 LinqHelper 类的新实体
        /// </summary>
        public BaseDal()
            : base("GameUserDB")
        {
        }

        /// <summary>
        /// 初始化一个 LinqHelper 类的新实体
        /// </summary>
        /// <param name="connectionName">数据库链接名</param>
        public BaseDal(string connectionName)
            : base(connectionName)
        {
        }

        /// <summary>
        /// 构建 LinqHelper 实体
        /// </summary>
        /// <param name="connection">数据库链接</param>
        /// <param name="trans">事务</param>
        public BaseDal(DbConnection connection, DbTransaction trans)
            : base(connection, trans)
        {
        }
    }
}
