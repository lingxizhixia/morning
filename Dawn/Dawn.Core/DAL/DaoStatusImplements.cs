namespace Dawn.Core.DAL
{
    #region NameSpace

    using System.Linq;
    using System;
    using Dawn.Core.Entity;
    using Dawn.Common;
    using System.Data.Common;

    #endregion

    internal class DaoStatusImplements<TK, TV> : BaseDal<TV>, IDao<TK, TV>
        where TK : IEquatable<TK> 
        where TV : class, IEntityStatus<TK>, ICopy<TV>
    {
        /// <summary>
        /// 初始化一个 DaoStatusImplements 类的新实体
        /// </summary>
        public DaoStatusImplements()
            : base()
        {
        }

        /// <summary>
        /// 初始化一个 DaoStatusImplements 类的新实体
        /// </summary>
        /// <param name="connectionName">数据库链接名</param>
        public DaoStatusImplements(string connectionName)
            : base(connectionName)
        {
        }

        /// <summary>
        /// 初始化一个 DaoStatusImplements 类的新实体
        /// <para>使用支持事务</para>
        /// </summary>
        /// <param name="connection">数据库链接</param>
        /// <param name="trans">事务</param>
        public DaoStatusImplements(DbConnection connection, DbTransaction trans)
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
            Table.InsertOnSubmit(entity);
            SubmitChanges();
            return entity;
        }

        /// <summary>
        /// 根据键获取相应的实体。
        /// </summary>
        /// <param name="id">键。</param>
        /// <returns>实体信息 -或- null。</returns>
        public virtual TV Get(TK id)
        {
            var query = from n in Table where id.Equals(n.Id) && n.Status == EntityStatus.Normal select n;

            return query.FirstOrDefault();
        }

        /// <summary>
        /// 根据键删除相应的实体。
        /// </summary>
        /// <param name="id">实体的惟一标识。</param>
        /// <returns>实体不存在时返回 false，否则更新状态并返回true。</returns>
        public virtual bool Delete(TK id)
        {
            var t = Get(id);
            if (t == null)
            {
                return false;
            }

            t.Status = EntityStatus.Deleted;
            SubmitChanges();
            return true;
        }

        /// <summary>
        /// 更新实体信息
        /// </summary>
        /// <param name="entity">实体信息</param>
        /// <returns>成功返回true，否则返回false。</returns>
        public virtual bool Update(TV entity)
        {
            var oldOne = Get(entity.Id);

            if (null == oldOne)
            {
                return false;
            }

            entity.CopyTo(ref oldOne);

            SubmitChanges();
            return true;
        }
    }
}
