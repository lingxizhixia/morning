namespace Dawn.Core.Entity
{
    /// <summary>
    /// 以状态字段标识的实体类的基接口
    /// </summary>
    /// <typeparam name="TK">主键类型。</typeparam>
    internal interface IEntityStatus<TK> : IEntity<TK>
    {
        /// <summary>
        /// 实体状态。该字段用以内部标识，不对后台操作人员开放，所以该字段不应出现在 CopyTo 方法内部。
        /// </summary>
        EntityStatus Status { get; set; }
    }
}
