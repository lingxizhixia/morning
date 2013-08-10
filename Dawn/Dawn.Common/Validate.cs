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
using System.Text.RegularExpressions;

#endregion

namespace Dawn.Common
{
    /// <summary>
    /// 数据验证
    /// </summary>
    public class ValidateHelper
    {
        /// <summary>
        /// 验证邮箱地址是否正确
        /// </summary>
        /// <param name="sEmailAddress">邮箱地址</param>
        /// <returns>正确，返回True;否则，返回False</returns>
        public static bool IsEmailRight(string psEmail)
        {
            return Regex.IsMatch(psEmail, @"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$", RegexOptions.IgnoreCase);
        }
    }
}
