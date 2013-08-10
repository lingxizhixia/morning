//-----------------------------------------------------------------------
// <copyright file="AgentUser.cs" company="虚谷游戏">
//     Copyright (c) 虚谷游戏. All rights reserved.
// </copyright>
// <author>欧昭平</author>
//-----------------------------------------------------------------------

namespace Dawn.Common
{
    #region

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Runtime.InteropServices;

    #endregion

    /// <summary>
    /// 获取键盘状态
    /// </summary>
    public class KeyboardState : IDisposable
    {
        #region 私有字段

        private static readonly int KEY_ON = 1;

        /// <summary>
        /// 大小写锁定键
        /// </summary>
        private static readonly int _CapsLock = 0x14;

        /// <summary>
        /// 插入键
        /// </summary>
        private static readonly int _Insert = 0x2D;

        /// <summary>
        /// 数字键
        /// </summary>
        private static readonly int _NumLock = 0x90;

        /// <summary>
        /// 用于保存所有键的状态值
        /// 使用延迟加载 使用的时候才会创建对象
        /// </summary>
        private static Lazy<byte[]> _KeyState;

        #endregion

        #region 引用API

        [DllImport("user32.dll", EntryPoint = "GetKeyboardState")]
        internal static extern int GetKeyboardState(byte[] pbKeyState);

        #endregion

        #region 公共方法

        /// <summary>
        /// 静态构造函数
        /// </summary>
        static KeyboardState()
        {
            _KeyState = new Lazy<byte[]>(() => { byte[] keyState = new byte[256]; GetKeyboardState(keyState); return keyState; });
        }

        /// <summary>
        /// 大小写锁定
        /// </summary>
        public static Boolean CapsLockStatus
        {
            get { return (_KeyState.Value)[_CapsLock] == KEY_ON; }
        }

        /// <summary>
        /// 插入键锁定
        /// </summary>
        public static Boolean InsertStatus
        {
            get { return (_KeyState.Value)[_Insert] == KEY_ON; }
        }

        /// <summary>
        /// 数字键锁定
        /// </summary>
        public static Boolean NumLockStatus
        {
            get { return (_KeyState.Value)[_NumLock] == KEY_ON; }
        }

        /// <summary>
        /// 释放非托管资源
        /// </summary>
        public void Dispose()
        {
        }

        #endregion
    }
}
