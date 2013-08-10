namespace Dawn.Core.Entity
{
    /// <summary>
    /// 实体类的基接口
    /// </summary>
    /// <typeparam name="TK">主键类型。</typeparam>
    internal interface IEntity<TK>
    {
        /// <summary>
        /// 当前实体的唯一标识。
        /// </summary>
        TK Id { get; set; }
    }
}
