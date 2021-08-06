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
    public class OperationSignup
    {
        public SqlConnection conn;
        public SqlCommand command;
        //public MyData data;
        DataAccessLayer dal = new DataAccessLayer();
        private System.Data.DataTable dt = new System.Data.DataTable();

        public OperationSignup()
        {
            //add constructor logic here
        }
        public System.Data.DataTable insertMember(String fullname, string dob,string conatct,string email,string state,string city,string pincode,string fulladdress,string membid,string pass,string accstatus)
        {
            String str = @"insert into MemberMaster (fullname,dob,contact_no,email,state,city,pincode,fulladdress,memberid,password,accountstatus) values
                        (@fullname,@dob,@contact_no,@email,@state,@city,@pincode,@fulladdress,@memberid,@password,@accountstatus)";

            SqlParameter[] param = new SqlParameter[11];
            param[0] = new SqlParameter("@fullname", SqlDbType.VarChar, 50);
            param[0].Value = fullname;
            param[1] = new SqlParameter("@dob", SqlDbType.VarChar, 50);
            param[1].Value = dob;
            param[2] = new SqlParameter("@contact_no", SqlDbType.VarChar, 50);
            param[2].Value = conatct;
            param[3] = new SqlParameter("@email", SqlDbType.VarChar, 50);
            param[3].Value = email;
            param[4] = new SqlParameter("@state", SqlDbType.VarChar, 50);
            param[4].Value = state;
            param[5] = new SqlParameter("@city", SqlDbType.VarChar, 50);
            param[5].Value = city;
            param[6] = new SqlParameter("@pincode", SqlDbType.VarChar, 50);
            param[6].Value = pincode;
            param[7] = new SqlParameter("@fulladdress", SqlDbType.VarChar, 50);
            param[7].Value = fulladdress;
            param[8] = new SqlParameter("@memberid", SqlDbType.VarChar, 50);
            param[8].Value = membid;
            param[9] = new SqlParameter("@password", SqlDbType.Char, 10);
            param[9].Value = pass;
            param[10] = new SqlParameter("@accountstatus", SqlDbType.VarChar, 50);
            param[10].Value = accstatus;

            try
            {
                dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getmemberid()
        {
            String str = @"select memberid from MemberMaster";
            
            try
            {
                dt = dal.GetDataTable(str);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public System.Data.DataTable getauthorid()
        {
            String str = @"select authorid from AuthorName";
            try
            {
                dt = dal.GetDataTable(str);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getpublisherid()
        {
            String str = @"select publisherid from PublisherMaster";
            try
            {
                dt = dal.GetDataTable(str);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getstatelist()
        {
            String str = @"select stateid,statename from StateMaster";

            try
            {
                dt = dal.GetDataTable(str);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getcitylist()
        {
            String str = @"select cityid,cityname from CityMaster";

            try
            {
                dt = dal.GetDataTable(str);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}