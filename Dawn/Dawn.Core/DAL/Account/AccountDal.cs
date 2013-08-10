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
using Dawn.Core.DAL;
using Shine.Utility;

#endregion

namespace Dawn.Core.DAL.Account
{
    /// <summary>
    /// 
    /// </summary>
    internal class AccountDal : DaoImplements<int, AccountInfo>
    {
        #region 构造函数
        
        /// <summary>
        /// 初始化一个 PartnerDal 类的新实体
        /// </summary>
        public AccountDal()
            : base(ConnectionHelper.ConnectionFactory.Trade)
        {
        }

        /// <summary>
        /// 初始化一个 PartnerDal 类的新实体
        /// <para>使用支持事务</para>
        /// </summary>
        /// <param name="connection">数据库链接</param>
        /// <param name="trans">事务</param>
        internal AccountDal(DbConnection connection, DbTransaction trans)
            : base(connection, trans)
        {
        }

        #endregion

        /// <summary>
        /// 开户 新开交易户
        /// </summary>
        /// <param name="account">交易账户基本信息实体类</param>
        /// <returns>开户成功，返回交易户ID，否则，返回0</returns>
        internal int OpenAccount(AccountInfo account)
        {
            int nAccountId = 0;

            SqlParameter[] arrSqlParam = new SqlParameter[]{
                    new SqlParameter("@Name",account.Name),
                    new SqlParameter("@Sex",account.Sex),
                    new SqlParameter("@Birthday",account.Birthday),
                    new SqlParameter("@IdentityType",account.IdentityType),
                    new SqlParameter("@CardNum",account.CardNum),
                    new SqlParameter("@Privince",account.Privince),
                    new SqlParameter("@City",account.City),
                    new SqlParameter("@Region",account.Region),
                    new SqlParameter("@Address",account.Address),
                    new SqlParameter("@ZipCode",account.ZipCode),
                    new SqlParameter("@Telephone",account.Telephone),
                    new SqlParameter("@Email",account.Email),
                    new SqlParameter("@QQOrMsn",account.QQOrMsn),
                    new SqlParameter("@Introducer",account.Introducer),
                    new SqlParameter("@IdentityPicture",account.IdentityPicture),
                    new SqlParameter("@OtherCardPicture",account.OtherCardPicture),
                    new SqlParameter("@ClientOwner",account.ClientOwner),
                    new SqlParameter("@Remark",account.Remark),
                    new SqlParameter("@Channel",account.Channel),
                    new SqlParameter("@OfficialId",account.OfficialId),
                    new SqlParameter("@MemberId",account.MemberId)
            };
            SqlParameter paraReturn = new SqlParameter("@Id", SqlDbType.Int);
            paraReturn.Direction = ParameterDirection.ReturnValue;

            SqlConnection sqlConnn = new SqlConnection(ConnectionHelper.ConnectionFactory.GetConnectionString(ConnectionHelper.ConnectionFactory.Trade));
            using (sqlConnn){
                try{
                    sqlConnn.Open();
                    SqlCommand sqlComd = new SqlCommand("Proc_Add_Account", sqlConnn);
                    sqlComd.CommandType = CommandType.StoredProcedure;
                    sqlComd.Parameters.AddRange(arrSqlParam);
                    sqlComd.Parameters.Add(paraReturn);
                    sqlComd.ExecuteNonQuery();
                    nAccountId = DBNull.Value.Equals(paraReturn.Value) ? 0 : (paraReturn.Value as Int32?) ?? 0;
                }
                catch (SqlException sqlEx){
                    nAccountId = 0;
                }
                catch (Exception ex){
                    nAccountId = 0;
                }
                finally{
                    if (sqlConnn.State == ConnectionState.Open) { sqlConnn.Close(); }
                }
                
            }
            return nAccountId;
        }
    }
}
