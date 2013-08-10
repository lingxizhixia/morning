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

#endregion

namespace Dawn.Web.UI
{
    /// <summary>
    /// 提示消息接口
    /// </summary>
    public interface IMessageBase
    {
       /// <summary>
       /// 提示信息
       /// </summary>
       /// <param name="psMsg"></param>
        void JboxInfo(string psMsg);

       /// <summary>
       ///  显示id为id-html的div内部html，同时设置了bottomText
       /// </summary>
       /// <param name="psControlId"></param>
       /// <param name="psBottom"></param>
        void JboxGetHtmlAndShow(string psControlId, string psBottom);

       /// <summary>
       ///  ajax get 页面ajax.html的内容并显示，例如要提交id=1，则地址应该为 ajax.html?id=1，post:前缀的使用与get:的一样
       /// </summary>
       /// <param name="psPageUrl"></param>
        void JboxGetPageContentAndShow(string psPageUrl);

       /// <summary>
       /// 用iframe显示http://www.baidu.com的内容，并设置了标题、宽与高、按钮
       /// </summary>
       /// <param name="psPageUrl">弹出页面路径</param>
       /// <param name="psTitle">弹出窗口标题</param>
       /// <param name="pnWidth">弹出窗口宽度</param>
       /// <param name="pnHeight">弹出窗口高度</param>
        void PromptPage(string psPageUrl, string psTitle, int pnWidth, int pnHeight);

       /// <summary>
       /// 用iframe显示http://www.baidu.com的内容，并设置了标题、宽与高、按钮
       /// 与方法PromptPage一样 区别在于PromptPage方法采用原型，这个方法是对原型的扩展
       /// </summary>
       /// <param name="psPageUrl">弹出页面路径</param>
       /// <param name="psTitle">弹出窗口标题</param>
       /// <param name="pnWidth">弹出窗口宽度</param>
       /// <param name="pnHeight">弹出窗口高度</param>
        void Open(string psPageUrl, string psTitle, int pnWidth, int pnHeight);

       /// <summary>
       /// 弹出消息框 并且可以设置点击某一个按钮之后的事件
       /// </summary>
       /// <param name="psMsg">消息内容</param>
       /// <param name="psTitle">标题</param>
       /// <param name="psOptions">点击某一个按钮之后的事件 如：{ closed: function () { alert('prompt is closed.'); } }</param>
        void PromptMsg(string psMsg, string psTitle, string psOptions);

       /// <summary>
       /// 弹出提示框
       /// </summary>
       /// <param name="psMsg"></param>
       /// <param name="psTitle"></param>
        void Alter(string psMsg, string psTitle);

       /// <summary>
       /// 弹出提示框 设置消息图标
       /// </summary>
       /// <param name="psMsg"></param>
       /// <param name="psTitle"></param>
        void Info(string psMsg, string psTitle);

       /// <summary>
       /// 弹出提示框 设置成功图标
       /// </summary>
       /// <param name="psMsg"></param>
       /// <param name="psTitle"></param>
        void Success(string psMsg, string psTitle);

       /// <summary>
       /// 弹出提示框 设置错误图标
       /// </summary>
       /// <param name="psMsg"></param>
       /// <param name="psTitle"></param>
        void Error(string psMsg, string psTitle);

       /// <summary>
       /// 弹出提示框 根据消息类型设置设置消息图标
       /// </summary>
       /// <param name="psMsg"></param>
       /// <param name="psTitle"></param>
       /// <param name="MsgType"></param>
        void Message(string psMsg, string psTitle, MessageType MsgType = MessageType.Info);

       /// <summary>
       /// 弹出选择框
       /// </summary>
       /// <param name="psTips"></param>
       /// <param name="psTitle"></param>
        void Confirm(string psTips, string psTitle);

       /// <summary>
       /// 弹出选择框 并且设置确定以及取消按钮的文字
       /// </summary>
       /// <param name="psTips">消息</param>
       /// <param name="psTitle">标题</param>
       /// <param name="psSureBtnText">确定按钮文字</param>
       /// <param name="psNotBtnText">取消按钮文字</param>
        void Confirm(string psTips, string psTitle, string psSureBtnText, string psNotBtnText);

       /// <summary>
       /// 警告
       /// </summary>
       /// <param name="psTips"></param>
       /// <param name="psTitle"></param>
        void Warning(string psTips, string psTitle);

       /// <summary>
       /// 弹出提示框 并且自动消失
       /// </summary>
       /// <param name="psTips"></param>
        void Tip(string psTips);

        /// <summary>
        /// 弹出提示框 并且自动消失
        /// </summary>
        /// <param name="psTips"></param>
        void Tip(string psTips, string psScript);

       /// <summary>
       /// 右下角提示
       /// </summary>
       /// <param name="psMsg"></param>
        void Messager(string psMsg, string psTitle);

       /// <summary>
       /// 右下角提示
       /// </summary>
       /// <param name="psMsg"></param>
        void MessagerFade(string psMsg, string psTitle);
    }

    /// <summary>
    /// 提示消息类型
    /// </summary>
    public enum MessageType : int
   {
       Alter = 0,
       Info = 1,
       Success = 2,
       Error = 3,
       Message = 4
   }

    /// <summary>
    /// 消息实现类 枚举 默认为jbox
    /// </summary>
    public enum MessageImplement : int
    {
        JBOX=0
    }
}
