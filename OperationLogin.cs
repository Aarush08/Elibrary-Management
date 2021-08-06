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
    public class OperationLogin
    {
        public SqlConnection conn;
        public SqlCommand command;
        //public MyData data;
        DataAccessLayer dal = new DataAccessLayer();
        private System.Data.DataTable dt = new System.Data.DataTable();

        public OperationLogin()
        {
            //add constructor logic here
        }

        public System.Data.DataTable getmemberdetails(string membid,string pass)
        {
            String str = @"select * from MemberMaster where memberid=@memberid and password=@password";

            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@memberid", SqlDbType.VarChar, 50);
            param[0].Value = membid;
            param[1] = new SqlParameter("@password", SqlDbType.VarChar, 50);
            param[1].Value = pass;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getadminmemberdetails(string membid, string pass)
        {
            String str = @"select * from AdminLogin where username=@username and password=@password";

            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@username", SqlDbType.VarChar, 50);
            param[0].Value = membid;
            param[1] = new SqlParameter("@password", SqlDbType.VarChar, 50);
            param[1].Value = pass;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}