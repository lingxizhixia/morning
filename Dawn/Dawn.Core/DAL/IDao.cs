namespace Dawn.Core.DAL
{
    /// <summary>
    /// DAL 层操作接口。
    /// </summary>
    /// <typeparam name="TK">实体唯一标识的类型。</typeparam>
    /// <typeparam name="TV">实体的类型。</typeparam>
    internal interface IDao<in TK,TV>
    {
        /// <summary>
        /// 增加一条记录的方法,返回带插入ID的自身实例。
        /// </summary>
        /// <param name="entity">信息实体。</param>
        TV Add(TV entity);

        /// <summary>
        /// 更新一条记录。
        /// </summary>
        /// <param name="entity">信息实体。</param>
        /// <returns></returns>
        bool Update(TV entity);

        /// <summary>
        /// 删除一条记录。
        /// </summary>
        /// <param name="id">记录的唯一标识。</param>
        /// <returns>删除是否成功。</returns>
        bool Delete(TK id);

        /// <summary>
        /// 根据KEY返回对象
        /// </summary>
        /// <param name="id">记录的唯一标识。</param>
        /// <returns></returns>
        TV Get(TK id);
    }
}
