namespace Dawn.Common
{
    /// <summary>
    /// 拷贝接口。
    /// </summary>
    /// <typeparam name="T">实例类型。</typeparam>
    public interface ICopy<T>
    {
        /// <summary>
        /// 将当前实例深拷贝到目标实例。
        /// </summary>
        /// <param name="dest">目标实例。</param>
        void CopyTo(ref T dest);
    }
}
