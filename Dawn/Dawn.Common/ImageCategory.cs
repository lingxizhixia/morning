using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

namespace Dawn.Common
{
    /// <summary>
    /// 图片类别
    /// </summary>
    public enum ImageCategory
    {
        /// <summary>
        /// 商品图片
        /// </summary>
        ShopProduct=0,

        /// <summary>
        /// 商户LOGO
        /// </summary>
        AgentLogo=1,

        /// <summary>
        /// 广告图片
        /// </summary>
        Advertise=2
    }

    /// <summary>
    /// 配置替换图片
    /// 每添加一个枚举值 应该添加相应的默认图片；如果没有 则获取Default设置的图片
    /// </summary>
    public class ImageDefaultSeting
    {
        #region 私有字段
        
        /// <summary>
        /// 默认的替换图片
        /// </summary>
        private static readonly string _Default = "Default.gif";

        /// <summary>
        /// 商品替换图片
        /// </summary>
        private static readonly string _ShopProduct = "ShopProduct.gif";

        /// <summary>
        /// LOGO替换图片
        /// </summary>
        private static readonly string _AgentLogo = "AgentLogo.gif";

        /// <summary>
        /// LOGO替换图片
        /// </summary>
        private static readonly string _Advertisement = "Advertisement.JPG";

        /// <summary>
        /// 默认图片字典
        /// </summary>
        private static Dictionary<ImageCategory, string> dictionary = CreateDictionary();

        #endregion

        #region 方法

        /// <summary>
        /// 获取默认图片
        /// </summary>
        /// <param name="category"></param>
        /// <returns></returns>
        public static string GetDefaultPicture(ImageCategory category)
        {
            string sDefaultPicture = _Default;

            if (dictionary.ContainsKey(category)){
                sDefaultPicture = dictionary[category];
            }else{
                sDefaultPicture = _Default;
            }

            return sDefaultPicture;
        }

        /// <summary>
        /// 创建默认图片字典
        /// </summary>
        /// <returns>默认图片字典</returns>
        private static Dictionary<ImageCategory, string> CreateDictionary()
        {
            Dictionary<ImageCategory, string> dict = new Dictionary<ImageCategory, string>();
            dict.Add(ImageCategory.ShopProduct,_ShopProduct);
            dict.Add(ImageCategory.AgentLogo, _AgentLogo);
            dict.Add(ImageCategory.Advertise, _Advertisement);
            return dict;
        }

        #endregion
    }
}