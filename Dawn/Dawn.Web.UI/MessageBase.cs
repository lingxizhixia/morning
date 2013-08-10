//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

#region NameSpace

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

#endregion

namespace Dawn.Web.UI
{
    /// <summary>
    /// 提示类
    /// </summary>
    public class MessageBase : IMessageBase
    {
        #region 实现各种提示

        /// <summary>
        /// 提示信息
        /// </summary>
        /// <param name="psMsg"></param>
        public void JboxInfo(string psMsg)
        {
            string sScript = "$.jBox.info({0});";
            MessageBase.Execute(string.Format(sScript, psMsg));
        }

        /// <summary>
        ///  显示id为id-html的div内部html，同时设置了bottomText
        /// </summary>
        /// <param name="psControlId"></param>
        /// <param name="psBottom"></param>
        public void JboxGetHtmlAndShow(string psControlId, string psBottom)
        {
            string sScript = "$.jBox('id:{0}', { bottomText: '{1}' });";
            MessageBase.Execute(string.Format(sScript, psControlId, psBottom));
        }

        /// <summary>
        ///  ajax get 页面ajax.html的内容并显示，例如要提交id=1，则地址应该为 ajax.html?id=1，post:前缀的使用与get:的一样
        /// </summary>
        /// <param name="psPageUrl"></param>
        public void JboxGetPageContentAndShow(string psPageUrl)
        {
            string sScript = "$.jBox('get:{0}');";
            MessageBase.Execute(string.Format(sScript, psPageUrl));
        }

        /// <summary>
        /// 用iframe显示http://www.baidu.com的内容，并设置了标题、宽与高、按钮
        /// </summary>
        /// <param name="psPageUrl">弹出页面路径</param>
        /// <param name="psTitle">弹出窗口标题</param>
        /// <param name="pnWidth">弹出窗口宽度</param>
        /// <param name="pnHeight">弹出窗口高度</param>
        public void PromptPage(string psPageUrl, string psTitle, int pnWidth, int pnHeight)
        {
            string sScript = "$.jBox('iframe:{0}', {title: '{1}',width: {2},height: {3},buttons: { '关闭': true }});";
            MessageBase.Execute(string.Format(sScript, psPageUrl, psTitle, pnWidth, pnHeight));
        }

        /// <summary>
        /// 用iframe显示http://www.baidu.com的内容，并设置了标题、宽与高、按钮
        /// 与方法PromptPage一样 区别在于PromptPage方法采用原型，这个方法是对原型的扩展
        /// </summary>
        /// <param name="psPageUrl">弹出页面路径</param>
        /// <param name="psTitle">弹出窗口标题</param>
        /// <param name="pnWidth">弹出窗口宽度</param>
        /// <param name="pnHeight">弹出窗口高度</param>
        public void Open(string psPageUrl, string psTitle, int pnWidth, int pnHeight)
        {
            PromptPage(psPageUrl, psTitle, pnWidth, pnHeight);
        }

        /// <summary>
        /// 弹出消息框 并且可以设置点击某一个按钮之后的事件
        /// </summary>
        /// <param name="psMsg">消息内容</param>
        /// <param name="psTitle">标题</param>
        /// <param name="psState">消息类型 默认为info</param>
        /// <param name="psOptions">点击某一个按钮之后的事件 如：{ closed: function () { alert('prompt is closed.'); } }</param>
        public void PromptMsg(string psMsg, string psTitle, string psOptions)
        {
            string sScript = "$.jBox.prompt('{0}', '{1}', 'info',{{2}});";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle, psTitle, psOptions));
        }

        /// <summary>
        /// 弹出提示框
        /// </summary>
        /// <param name="psMsg"></param>
        /// <param name="psTitle"></param>
        public void Alter(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.alert('{0}', '{1}');";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        /// <summary>
        /// 弹出提示框
        /// </summary>
        /// <param name="psMsg"></param>
        /// <param name="psTitle"></param>
        public void Info(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.info('{0}', '{1}');";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        /// <summary>
        /// 弹出提示框
        /// </summary>
        /// <param name="psMsg"></param>
        /// <param name="psTitle"></param>
        public void Success(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.success('{0}', '{1}');";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        /// <summary>
        /// 弹出提示框
        /// </summary>
        /// <param name="psMsg"></param>
        /// <param name="psTitle"></param>
        public void Error(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.error('{0}', '{1}');";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        /// <summary>
        /// 弹出提示框 根据消息类型设置设置消息图标
        /// </summary>
        /// <param name="psMsg"></param>
        /// <param name="psTitle"></param>
        /// <param name="MsgType"></param>
        public void Message(string psMsg, string psTitle, MessageType MsgType = MessageType.Info)
        {
            switch (MsgType)
            {
                case MessageType.Alter:
                    Alter(psMsg, psTitle);
                    break;
                case MessageType.Info:
                    Info(psMsg, psTitle);
                    break;
                case MessageType.Success:
                    Success(psMsg, psTitle);
                    break;
                case MessageType.Error:
                    Error(psMsg, psTitle);
                    break;
            }
        }

        /// <summary>
        /// 弹出提示框 并且自动消失
        /// </summary>
        /// <param name="psTips"></param>
        public void Tip(string psTips)
        {
            string sScript = "$.jBox.tip('{0}');";
            MessageBase.Execute(string.Format(sScript, psTips));
        }

        /// <summary>
        /// 弹出提示框 并且自动消失
        /// </summary>
        /// <param name="psTips"></param>
        public void Tip(string psTips,string psScript)
        {
            string sScript = "$.jBox.tip('{0}');";
            MessageBase.Execute(string.Format(sScript, psTips) + psScript);
            //MessageBase.Execute(psScript);
        }

        /// <summary>
        /// 弹出选择框
        /// </summary>
        /// <param name="psTips"></param>
        /// <param name="psTitle"></param>
        public void Confirm(string psTips, string psTitle)
        {
            string sScript = "$.jBox.confirm('{0}', '{1}', {2});";
            string sSubmit = "function (v, h, f) {";
            sSubmit = string.Concat(sSubmit, "if (v == 'ok') {");
            sSubmit = string.Concat(sSubmit, "$.jBox.tip('正在删除数据...', 'loading');");
            sSubmit = string.Concat(sSubmit, "window.setTimeout(function () { $.jBox.tip('删除成功。', 'success'); }, 2000);");
            sSubmit = string.Concat(sSubmit, "} else if (v == 'cancel') {");
            sSubmit = string.Concat(sSubmit, "}return true;");
            MessageBase.Execute(string.Format(sScript, psTips, psTitle, sSubmit));
        }

        /// <summary>
        /// 弹出选择框 并且设置确定以及取消按钮的文字
        /// </summary>
        /// <param name="psTips">消息</param>
        /// <param name="psTitle">标题</param>
        /// <param name="psSureBtnText">确定按钮文字</param>
        /// <param name="psNotBtnText">取消按钮文字</param>
        public void Confirm(string psTips, string psTitle, string psSureBtnText, string psNotBtnText)
        {
            string sScript = "$.jBox.confirm('{0}', '{1}', {2}, { buttons: { '{3}': true, '{4}': false} });";
            string sSubmit = "function (v, h, f) {";
            sSubmit = string.Concat(sSubmit, "if (v == '{0}') {");
            sSubmit = string.Concat(sSubmit, "$.jBox.tip('正在删除数据...', 'loading');");
            sSubmit = string.Concat(sSubmit, "window.setTimeout(function () { $.jBox.tip('删除成功。', 'success'); }, 2000);");
            sSubmit = string.Concat(sSubmit, "} else if (v == '{1}') {");
            sSubmit = string.Concat(sSubmit, "}return true;");
            MessageBase.Execute(string.Format(sScript, psTips, psTitle, string.Format(sSubmit, psSureBtnText, psNotBtnText), psSureBtnText, psNotBtnText));
        }

        /// <summary>
        /// 警告
        /// </summary>
        /// <param name="psTips"></param>
        /// <param name="psTitle"></param>
        public void Warning(string psTips, string psTitle)
        {
            string sScript = "$.jBox.warning('{0}', '{1}', {2});";
            string sSubmit = "function (v, h, f) {";
            sSubmit = string.Concat(sSubmit, "if (v == 'yes') {$.jBox.tip('已保存。', 'success');}");
            sSubmit = string.Concat(sSubmit, " if (v == 'no') { $.jBox.tip('没保存。');}");
            sSubmit = string.Concat(sSubmit, "if (v == 'cancel') { $.jBox.tip('已取消。');}");
            MessageBase.Execute(string.Format(sScript, psTips, psTitle, sSubmit));
        }

        /// <summary>
        /// 右下角提示
        /// </summary>
        /// <param name="psMsg"></param>
        public void Messager(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.messager('{0}', '{1}');";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        /// <summary>
        /// 右下角提示 自动消失
        /// </summary>
        /// <param name="psMsg"></param>
        public void MessagerFade(string psMsg, string psTitle)
        {
            string sScript = "$.jBox.messager('{0}', '{1}', null, { width: 350, showType: 'fade' });";
            MessageBase.Execute(string.Format(sScript, psMsg, psTitle));
        }

        #endregion

        #region 基础输出脚本

        /// <summary>
        /// 基本输出
        /// </summary>
        private static readonly string _ScriptPatter = "<script>{0}</script>";

        /// <summary>
        /// 弹出提示框
        /// </summary>
        /// <param name="psTitle">提示框标题</param>
        /// <param name="psMsg">提示内容</param>
        public static void Execute(string psScript)
        {
            Page currentPage = (Page)HttpContext.Current.Handler;
            if (psScript.IndexOf("script") < 0)
            {
                psScript = string.Format(_ScriptPatter, psScript);
            }
            currentPage.ClientScript.RegisterStartupScript(currentPage.GetType(), "script", psScript);
        }

        /// <summary>
        /// 利用UpdatePanel1弹出消息框
        /// </summary>
        /// <param name="UpdatePanel1"></param>
        /// <param name="psMsg"></param>
        public static void Execute(UpdatePanel UpdatePanel1, string psScript)
        {
            if (psScript.IndexOf("script") < 0)
            {
                psScript = string.Format(_ScriptPatter, psScript);
            }
            ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "script", psScript, false);
        }
        #endregion
    }
}
