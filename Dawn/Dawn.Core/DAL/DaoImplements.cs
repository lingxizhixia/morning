namespace Dawn.Core.DAL
{
    #region NameSpace

    using System.Linq;
    using System;
    using Dawn.Core.Entity;
    using System.Data.Common;
    using Dawn.Common;

    #endregion

    /// <summary>
    /// 数据访问层基础实现类
    /// </summary>
    /// <typeparam name="TK">实体类</typeparam>
    /// <typeparam name="TV">唯一索引类型</typeparam>
    internal class DaoImplements<TK, TV> : BaseDal<TV>, IDao<TK, TV>
        where TK : IEquatable<TK> 
        where TV : class, IEntity<TK>, ICopy<TV>
    {
        /// <summary>
        /// 初始化一个 DaoImplements 类的新实体
        /// </summary>
        public DaoImplements()
            : base()
        {
        }

        /// <summary>
        /// 初始化一个 DaoImplements 类的新实体
        /// </summary>
        /// <param name="connectionName">数据库链接名</param>
        public DaoImplements(string connectionName)
            : base(connectionName)
        {
        }

        /// <summary>
        /// 初始化一个 DaoImplements 类的新实体
        /// <para>使用支持事务</para>
        /// </summary>
        /// <param name="connection">数据库链接</param>
        /// <param name="trans">事务</param>
        public DaoImplements(DbConnection connection, DbTransaction trans)
            : base(connection, trans)
        {
        }

        /// <summary>
        /// 添加实体信息。
        /// 返回带主键的实体信息。
        /// </summary>
        /// <param name="entity">实体信息。</param>
        /// <returns>带主键的实体信息。</returns>
        public virtual TV Add(TV entity)
        {
            this.Table.InsertOnSubmit(entity);
            this.SubmitChanges();
            return entity;
        }

        /// <summary>
        /// 根据键获取相应的实体。
        /// </summary>
        /// <param name="id">键。</param>
        /// <returns>实体信息 -或- null。</returns>
        public virtual TV Get(TK id)
        {
            var query = from n in Table where id.Equals(n.Id) select n;

            return query.FirstOrDefault();
        }

        /// <summary>
        /// 根据键删除相应的实体。
        /// </summary>
        /// <param name="id">实体的惟一标识。</param>
        /// <returns>实体不存在时返回 false，否则更新状态并返回true。</returns>
        public virtual bool Delete(TK id)
        {
            var result = false;

            var t = this.Get(id);
            if (t != null)
            {
                this.Table.DeleteOnSubmit(t);
                this.SubmitChanges();
                result = true;
            }

            return result;
        }

        /// <summary>
        /// 更新实体信息
        /// </summary>
        /// <param name="entity">实体信息</param>
        /// <returns>成功返回true，否则返回false。</returns>
        public virtual bool Update(TV entity)
        {
            var result = false;

            var oldOne = this.Get(entity.Id);
            if (oldOne != null)
            {
                entity.CopyTo(ref oldOne);
                this.SubmitChanges();
                result = true;
            }

            return result;
        }
    }
}
