using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dawn.Web.UI
{
    public class MessageFactory
    {
        /// <summary>
        /// 创建消息提示实体
        /// </summary>
        /// <returns></returns>
        public static IMessageBase Create(MessageImplement implement){
            IMessageBase iMessage = null;
            switch (implement){
                case MessageImplement.JBOX:
                    iMessage = new MessageBase();
                    break;
                default:
                     iMessage = new MessageBase();
                     break;
            }
            return new MessageBase();
        }
    }
}
