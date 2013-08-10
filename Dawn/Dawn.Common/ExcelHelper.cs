using System.Web.UI.WebControls;
using System.Web.UI;

namespace Dawn.Common
{
	public class ExcelHelper
	{
		public static void GridExportToExcel(GridView gdvShow, Page p, string excelName)
		{
			// GridExportToExcel(gdvShow, p, excelName,"utf-8");
			GridExportToExcel(gdvShow, p, excelName, System.Text.Encoding.Default.BodyName);
		}

		public static void GridExportToExcel(GridView gdvShow,Page p,string excelName,string charset)
		{
            gdvShow.Visible = true;
			p.Response.Clear();
			p.Response.Buffer = false;
			if (charset == string.Empty)
			{
				p.Response.Charset = System.Text.Encoding.Default.BodyName;
			}
			else
			{
				p.Response.Charset = charset;
			}
            p.Response.AppendHeader("Content-Disposition", "attachment;filename=" + System.Web.HttpUtility.UrlEncode(excelName, System.Text.Encoding.UTF8) + ".xls");
			p.Response.ContentEncoding = System.Text.Encoding.GetEncoding(charset);
			p.Response.ContentType = "application/ms-excel"; 
			p.EnableViewState = false;
			System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
			System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
			gdvShow.RenderControl(oHtmlTextWriter);
			p.Response.Write(oStringWriter.ToString());
			p.Response.End();
            gdvShow.Visible = false;
		}


	}
}
