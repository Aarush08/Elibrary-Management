using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace ElibraryManagement
{
    public class DataAccessLayer
    {
        SqlConnection mCon;
        SqlCommand mDataCom;
        SqlDataAdapter mDa;

        public int ExecuteSql(string strsql)
        {

            OpenConnection();
            //Set Command Object Properties
            mDataCom.CommandType = CommandType.Text;
            mDataCom.CommandText = strsql;
            mDataCom.CommandTimeout = 2000;
            int Result;
            Result = mDataCom.ExecuteNonQuery();
            ClosedConnection();
            DisposeConnection();
            return Result;
        }
        public int ExecuteSql(String strSPname, SqlParameter[] arraParams)
        {
            OpenConnection();
            //Set Command Object Properties
            mDataCom.CommandType = CommandType.StoredProcedure;
            mDataCom.CommandText = strSPname;
            mDataCom.CommandTimeout = 2000;
            mDataCom.Parameters.Clear();
            if (arraParams != null)
            {
                foreach (SqlParameter loopParam in arraParams)
                {
                    mDataCom.Parameters.Add(loopParam);
                }

            }
            int Result;
            Result = mDataCom.ExecuteNonQuery();
            ClosedConnection();
            DisposeConnection();
            return Result;
        }

        public DataTable GetDataTable(String strsql)
        {
            OpenConnection();
            DataTable dt = new DataTable();
            mDa = new SqlDataAdapter();
            mDataCom.CommandType = CommandType.Text;
            mDataCom.CommandText = strsql;
            mDataCom.CommandTimeout = 2000;
            mDa.SelectCommand = mDataCom;
            mDa.Fill(dt);
            ClosedConnection();
            DisposeConnection();
            return dt;
        }
        public DataTable GetDataTable(string strSPName, SqlParameter[] arraParmas)
        {
            OpenConnection();
            DataTable dt = new DataTable();
            mDataCom.CommandType = CommandType.StoredProcedure;
            mDataCom.CommandText = strSPName;
            if (mDataCom.Parameters.Count > 0)
            {
                mDataCom.Parameters.Clear();
            }
            if (arraParmas != null)
            {
                foreach (SqlParameter param in arraParmas)
                {
                    mDataCom.Parameters.Add(param);
                }
            }
            mDa.SelectCommand = mDataCom;
            mDa.Fill(dt);
            ClosedConnection();
            DisposeConnection();
            return dt;
        }
        /// <summary>
        /// returns datatable for a parameterized query
        /// </summary>
        /// <param name="sqltext"></param>
        /// <param name="arraParmas"></param>
        /// <returns></returns>
        public DataTable GetDataTableQry(string sqltext, SqlParameter[] arraParmas)
        {
            OpenConnection();
            mDataCom.CommandType = CommandType.Text;
            mDataCom.CommandText = sqltext;
            DataTable dt = new DataTable();
            if (arraParmas != null)
            {
                foreach (SqlParameter param in arraParmas)
                {
                    mDataCom.Parameters.Add(param);
                }
            }
            mDa = new SqlDataAdapter();
            mDa.SelectCommand = mDataCom;
            mDa.Fill(dt);
            ClosedConnection();
            DisposeConnection();
            return dt;
        }

        private void OpenConnection()
        {
            if(mCon == null)
            {
                String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                mCon = new SqlConnection(strcon);

                if(mCon.State == ConnectionState.Closed)
                {
                    mCon.Open();
                    mDataCom = new SqlCommand();
                    mDataCom.Connection = mCon;
                }

            }
        }

        
        private void ClosedConnection()
        {
            if (mCon.State == ConnectionState.Open)
            {
                mCon.Close();
            }
        }
        private void DisposeConnection()
        {
            if (mCon != null)
            {
                mCon.Dispose();
                mCon = null;
            }
        }
    }
}