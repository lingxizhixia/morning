//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

#region NameSpace

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Data.Common;
using Shine.Common;
using Dawn.Core.Entity.Account;
using Dawn.Core.DAL.Account;
using Shine.Utility;

#endregion

namespace Dawn.Core.BLL.Account
{
    /// <summary>
    /// 新开交易户业务逻辑类
    /// </summary>
    public class AccountBll
    {
        /// <summary>
        /// 开户
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        public static OpenAccountResult OpenAccount(AccountInfo account, ref int pnAccountId)
        {
            using (AccountDal dal = new AccountDal()){
                pnAccountId = dal.OpenAccount(account);
                return pnAccountId == 0 ? OpenAccountResult.FAIL : OpenAccountResult.SUCCESS;
            }
        }

        /// <summary>
        /// 会员注册结果枚举
        /// </summary>
        public enum OpenAccountResult : int{
            FAIL = 0,
            SUCCESS = 1
        }
    }
}
