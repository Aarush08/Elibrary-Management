using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ElibraryManagement.Utility;
using System.Threading;

namespace ElibraryManagement
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        private System.Data.DataTable dt = new System.Data.DataTable();
        protected void Page_Load(object sender, EventArgs e)
        { 
        }      

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string membid = txt_adminusername.Text.Trim();
            string pass = txt_adminpass.Text.Trim();

            try
            {
                OperationLogin op = new OperationLogin();
                dt = op.getadminmemberdetails(membid, pass);

                if (dt.Rows.Count > 0)
                {
                    //Session["Login"] = ((int)Constants.SessionValue.MemberLogin);
                    Response.Write("<script>alert('Welcome Admin, " + dt.Rows[0]["fullname"] + "');</script>");
                    //Response.Redirect("Home.aspx");
                    Session["username"] = dt.Rows[0]["username"].ToString();
                    Session["name"] = dt.Rows[0]["fullname"].ToString();
                    Session["role"] = "admin";                    
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials.');</script>");
                }
            }
            catch (ThreadAbortException ex1)
            {
                throw;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}