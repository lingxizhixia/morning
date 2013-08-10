//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

#region NameSpace

using System.Data.Linq.Mapping;
using Dawn.Common;
using Dawn.Core.Common;
using System;

#endregion

namespace Dawn.Core.Entity.Account
{
    /// <summary>
    /// 开户信息
    /// </summary>
    [Serializable]
    [Table(Name = "Account")]
    public class AccountInfo : IEntity<int>, ICopy<AccountInfo>
    {
        /// <summary>
        /// 开户ID
        /// </summary>
        [Column(Name = "Id", IsPrimaryKey = true, IsDbGenerated = true)]
        public int Id { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Name { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public SexType Sex { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public DateTime Birthday { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string IdentityType { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string CardNum { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Privince { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string City { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Region { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Address { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string ZipCode { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Telephone { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Email { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string QQOrMsn { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Introducer { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string IdentityPicture { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string OtherCardPicture { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string ClientOwner { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Remark { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string Channel { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string OfficialId { get; set; }

        /// <summary>
        /// 
        /// </summary>
        [Column]
        public string MemberId { get; set; }

        /// <summary>
        /// 将当前对象深拷贝到目标对象
        /// </summary>
        /// <param name="dest"></param>
        public void CopyTo(ref AccountInfo dest)
        {
            dest.Id = this.Id;
            dest.Name = this.Name;
            dest.Sex = this.Sex;
            dest.Birthday = this.Birthday;
            dest.IdentityType = this.IdentityType;
            dest.CardNum = this.CardNum;
            dest.Privince = this.Privince;
            dest.City = this.City;
            dest.Region = this.Region;
            dest.Address = this.Address;
            dest.ZipCode = this.ZipCode;
            dest.Telephone = this.Telephone;
            dest.Email = this.Email;
            dest.QQOrMsn = this.QQOrMsn;
            dest.Introducer = this.Introducer;
            dest.IdentityPicture = this.IdentityPicture;
            dest.OtherCardPicture = this.OtherCardPicture;
            dest.ClientOwner = this.ClientOwner;
            dest.Remark = this.Remark;
            dest.Channel = this.Channel;
            dest.OfficialId = this.OfficialId;
            dest.MemberId = this.MemberId;
        }



        #region 枚举集合

        /// <summary>
        /// 性别
        /// </summary>
        public enum SexType : int
        {
            女 = 0,
            男 = 1,
            未设置 = 2
        }

        #endregion
    }
}
