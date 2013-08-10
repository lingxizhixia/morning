namespace Dawn.Common
{
    #region
    using System;
    using System.Collections.Specialized;
    using Shine.Common;
    using System.Text;
    using System.Web;
    using Shine.Utility;
    #endregion

    /// <summary>
    /// 分页链接生成程序
    /// </summary>
    public sealed class PageGenerator
    {
        private readonly PageInformation _pageInfo;
        private readonly DisplayStyle _style;

        private readonly static PageGeneratorStrategy Default = new DefaultPageGenerator();
        private readonly static PageGeneratorStrategy Simple = new SimplePageGenerator();

        /// <summary>
        /// 初始化一个新的 Jinlong.Common.PageGenerator 实例。
        /// </summary>
        /// <param name="pageInfo">翻页信息</param>
        public PageGenerator(PageInformation pageInfo)
            : this(pageInfo, DisplayStyle.Default)
        {
        }

        /// <summary>
        /// 初始化一个新的 Jinlong.Common.PageGenerator 实例。
        /// </summary>
        /// <param name="pageInfo">翻页信息</param>
        /// <param name="style">显示风格</param>
        public PageGenerator(PageInformation pageInfo, DisplayStyle style)
        {
            if (pageInfo == null)
                throw new ArgumentNullException("pageInfo");
            if (!EnumHelper.Contains<DisplayStyle>(style))
                throw new ArgumentOutOfRangeException("style");

            _pageInfo = pageInfo;
            _style = style;
            QueryString = HttpContext.Current.Request.QueryString;
            UriPath = HttpContext.Current.Request.Url.LocalPath;
            PageQueryName = "page";
        }

        /// <summary>
        /// 请求参数集合。默认 HttpContext.Current.Request.QueryString
        /// </summary>
        public NameValueCollection QueryString { private get; set; }

        /// <summary>
        /// URI路径信息，比如 list.aspx, 默认 HttpContext.Current.Request.Url.LocalPath
        /// </summary>
        public string UriPath { private get; set; }

        /// <summary>
        /// 页码参数名,默认'page'
        /// </summary>
        public string PageQueryName { private get; set; }

        /// <summary>
        /// 获取 输出文本
        /// </summary>
        public string OutputText
        {
            get
            {
                switch (_style)
                {
                    case DisplayStyle.Default:
                        return Default.GetOutputText(this._pageInfo, this.QueryString, this.UriPath, this.PageQueryName);
                    case DisplayStyle.Simple:
                        return Simple.GetOutputText(this._pageInfo, this.QueryString, this.UriPath, this.PageQueryName);
                    default:
                        throw new InvalidOperationException();
                }
            }
        }

        /// <summary>
        /// 显示风格
        /// </summary>
        public enum DisplayStyle : byte
        {
            /// <summary>
            /// 默认
            /// </summary>
            Default,

            /// <summary>
            /// 简单
            /// </summary>
            Simple
        }
    }

    /// <summary>
    /// 分页链接生成策略
    /// </summary>
    internal abstract class PageGeneratorStrategy
    {
        internal abstract string GetOutputText(PageInformation pageInfo, NameValueCollection queryString,
            string uriPath, string pageQueryName);

        protected string GetQueryString(NameValueCollection queryString, string pageQueryName)
        {
            var query = "?";
            var allKeys = queryString.AllKeys;
            foreach (var key in allKeys)
            {
                if (string.Compare(key, pageQueryName, true) != 0)
                    query += key + "=" + HttpUtility.UrlEncode(queryString[key]) + "&";
            }

            return query;
        }

        protected void Append(int start, int end, int curPage, string curPageStyleClass, string pathAndQuery, StringBuilder sb)
        {
            for (var i = start; i <= end; i++)
            {
                if (i == curPage)
                {
                    sb.AppendFormat("<a class=\"{0}\">{1}</a>", curPageStyleClass, i);
                    continue;
                }
                sb.AppendFormat("<a href=\"{0}\">{1}</a>", pathAndQuery + i, i);
            }
        }
    }

    internal class DefaultPageGenerator : PageGeneratorStrategy
    {

        internal override string GetOutputText(PageInformation pageInfo, NameValueCollection queryString, string uriPath, string pageQueryName)
        {
            var query = this.GetQueryString(queryString, pageQueryName);
            var pathAndQuery = uriPath + query + pageQueryName + "=";
            var curPage = pageInfo.CurrentPage;
            var pageCount = pageInfo.PageCount;

            var sb = new StringBuilder(1000);
            sb.Append("<div class=\"page_link\">");

            // 上一页
            if (curPage == 1)
            {
                sb.Append("<a class=\"page_prev_gray\">上一页</a>");
            }
            else
            {
                sb.AppendFormat("<a class=\"page_prev\" href=\"{0}\">上一页</a>", pathAndQuery + (curPage - 1));
            }

            if (curPage < 4)
            {
                this.Append(1, Math.Min(pageCount, 5), curPage, "page_current", pathAndQuery, sb);

                if (6 < pageCount)
                {
                    sb.Append("...&nbsp;");
                }
                if (5 < pageCount)
                {
                    sb.AppendFormat("<a href=\"{0}\">{1}</a>", pathAndQuery + pageCount, pageCount);
                }
            }
            else
            {
                if (pageCount - 4 > 1)
                {
                    sb.Append("<a href=\"" + pathAndQuery + 1 + "\">1</a>" + (curPage == 4 || pageCount - 4 == 2 ? "" : "...&nbsp;"));
                }

                var startIndex = curPage + 2 < pageCount ? curPage - 2 : Math.Max(1, pageCount - 4);
                this.Append(startIndex, Math.Min(pageCount, curPage + 2), curPage, "page_current", pathAndQuery, sb);

                if (curPage + 2 < pageCount)
                {
                    sb.AppendFormat("{0}<a href=\"{1}\">{2}</a>", curPage == pageCount - 3 ? "" : "...&nbsp;", pathAndQuery + pageCount, pageCount);
                }
            }

            // 下一页
            if (curPage == pageCount)
            {
                sb.Append("<a class=\"page_next_gray\">下一页</a>");
            }
            else
            {
                sb.AppendFormat("<a class=\"page_next\" href=\"{0}\">下一页</a>", pathAndQuery + (curPage + 1));
            }

            sb.Append("</div>");
            return sb.ToString();
        }
    }

    internal class SimplePageGenerator : PageGeneratorStrategy
    {
        internal override string GetOutputText(PageInformation pageInfo, NameValueCollection queryString, string uriPath, string pageQueryName)
        {
            var query = this.GetQueryString(queryString, pageQueryName);
            var pathAndQuery = uriPath + query + pageQueryName + "=";
            var curPage = pageInfo.CurrentPage;
            var pageCount = pageInfo.PageCount;

            var sb = new StringBuilder(1000);
            sb.Append("<div class=\"page_link_s\">");

            // 总共2条 当前第1/1页
            sb.AppendFormat("总共{0}条 当前第{1}/{2}页 ", pageInfo.RecordCount, pageInfo.CurrentPage, pageInfo.PageCount);

            // 上一页
            if (curPage == 1)
            {
                sb.Append("<a class=\"page_gray_s\">首页</a>");
                sb.Append("<a class=\"page_gray_s\">上一页</a>");
            }
            else
            {
                sb.AppendFormat("<a href=\"{0}\">首页</a>", pathAndQuery + 1);
                sb.AppendFormat("<a href=\"{0}\">上一页</a>", pathAndQuery + (curPage - 1));
            }

            if (curPage < 4)
            {
                this.Append(1, Math.Min(pageCount, 5), curPage, "page_current_s", pathAndQuery, sb);

                if (6 < pageCount)
                {
                    sb.Append("...");
                }
                if (5 < pageCount)
                {
                    sb.AppendFormat("<a href=\"{0}\">{1}</a>", pathAndQuery + pageCount, pageCount);
                }
            }
            else
            {
                if (pageCount - 4 > 1)
                {
                    sb.Append("<a href=\"" + pathAndQuery + 1 + "\">1</a>" + (curPage == 4 || pageCount - 4 == 2 ? "" : "..."));
                }

                var startIndex = curPage + 2 < pageCount ? curPage - 2 : Math.Max(1, pageCount - 4);
                this.Append(startIndex, Math.Min(pageCount, curPage + 2), curPage, "page_current_s", pathAndQuery, sb);

                if (curPage + 2 < pageCount)
                {
                    sb.AppendFormat("{0}<a href=\"{1}\">{2}</a>", curPage == pageCount - 3 ? "" : "...", pathAndQuery + pageCount, pageCount);
                }
            }

            // 下一页
            if (curPage == pageCount)
            {
                sb.Append("<a class=\"page_gray_s\">下一页</a>");
                sb.Append("<a class=\"page_gray_s\">尾页</a>");
            }
            else
            {
                sb.AppendFormat("<a href=\"{0}\">下一页</a>", pathAndQuery + (curPage + 1));
                sb.AppendFormat("<a href=\"{0}\">尾页</a>", pathAndQuery + pageInfo.PageCount);
            }

            sb.Append("</div>");
            return sb.ToString();
        }
    }
}
