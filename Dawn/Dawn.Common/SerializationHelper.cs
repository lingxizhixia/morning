using System;
using System.IO;
using System.Xml.Serialization;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

namespace Dawn.Common
{
    public class SerializationHelper
    {
        #region 构造函数

        public SerializationHelper() { }

        #endregion

        #region Binary序列化

        /// <summary>
        /// 二进制序列化
        /// </summary>
        /// <param name="obj">需要二进制序列化的对象</param>
        /// <param name="psFileName">保存序列化结果的文件</param>
        public static void BinarySerialize(object obj,string psFileName)
        {
            BinaryFormatter binary = new BinaryFormatter();
            FileStream fs = new FileStream(psFileName, FileMode.CreateNew, FileAccess.Write);
            binary.Serialize(fs, obj);
        }

        /// <summary>
        /// 二进制反序列化
        /// </summary>
        /// <param name="psFileName">保存二进制数据的文件</param>
        /// <returns>目标对象</returns>
        public static object BinaryDeserialize(string psFileName)
        {
            BinaryFormatter binary = new BinaryFormatter();
            FileStream fs = new FileStream(psFileName, FileMode.Open, FileAccess.Read);
            object obj = null;
            try{
                obj = (object)binary.Deserialize(fs);
            }
            catch(Exception){
                obj = null;
            }

            return obj;
        }

        #endregion

        #region Json序列化

        /// <summary>
        /// JSON序列化
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string JsonSerialize(object obj)
        {
            string sSerialized = string.Empty;
            JavaScriptSerializer jsonSerialize = new JavaScriptSerializer();
            sSerialized = jsonSerialize.Serialize(obj);
            return sSerialized;
        }

        /// <summary>
        /// JSON序列化 
        /// 使用动态类型 可以避免类型转换
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string JsonSerialize(dynamic obj, bool pbDynamic)
        {
            string sSerialized = string.Empty;
            JavaScriptSerializer jsonSerialize = new JavaScriptSerializer();
            sSerialized = jsonSerialize.Serialize(obj);
            return sSerialized;
        }

        /// <summary>
        /// JSON反序列化
        /// </summary>
        /// <param name="psSerialized"></param>
        /// <returns></returns>
        public static object JsonDeSerialize(string psSerialized)
        {
            object obj = null;
            JavaScriptSerializer jsonSerialize = new JavaScriptSerializer();
            try{
                obj = jsonSerialize.Deserialize<object>(psSerialized);
            }
            catch (Exception){
                obj = null;
            }
            return obj;
        }

        /// <summary>
        /// JSON反序列化
        /// 使用动态类型 可以避免类型转换
        /// </summary>
        /// <param name="psSerialized"></param>
        /// <returns></returns>
        public static dynamic JsonDeSerialize(string psSerialized, bool pbDynamic)
        {
            dynamic obj = null;
            JavaScriptSerializer jsonSerialize = new JavaScriptSerializer();
            try{
                obj = (dynamic)jsonSerialize.Deserialize<dynamic>(psSerialized);
            }
            catch (Exception){
                obj = null;
            }
            return obj;
        }

        #endregion

        #region XML序列化

        /// <summary>
        /// 反序列化
        /// </summary>
        /// <param name="type">对象类型</param>
        /// <param name="filename">文件路径</param>
        /// <returns></returns>
        public static object Load(Type type, string filename)
        {
            FileStream fs = null;
            try
            {
                // open the stream...
                fs = new FileStream(filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                XmlSerializer serializer = new XmlSerializer(type);
                return serializer.Deserialize(fs);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }
        }

        /// <summary>
        /// 序列化
        /// </summary>
        /// <param name="obj">对象</param>
        /// <param name="filename">文件路径</param>
        public static void Save(object obj, string filename)
        {
            FileStream fs = null;
            // serialize it...
            try
            {
                fs = new FileStream(filename, FileMode.Create, FileAccess.Write, FileShare.ReadWrite);
                XmlSerializer serializer = new XmlSerializer(obj.GetType());
                serializer.Serialize(fs, obj);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }

        }

        #endregion
    }
}
