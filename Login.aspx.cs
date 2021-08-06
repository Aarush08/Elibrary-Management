using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ElibraryManagement.Utility;

namespace ElibraryManagement
{
    public partial class Login : System.Web.UI.Page
    {
        private System.Data.DataTable dt = new System.Data.DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string membid = txt_username.Text.Trim();
            string pass = txt_pass.Text.Trim();

            try
            {
                OperationLogin op = new OperationLogin();
                dt = op.getmemberdetails(membid, pass);

                if(dt.Rows.Count > 0)
                {
                    //Session["Login"] = ((int)Constants.SessionValue.MemberLogin);
                    //Response.Write("<script>alert('Login Successful !');</script>");
                    //Response.Redirect("Home.aspx?login="+ Session["Login"] ); 
                    Session["username"] = dt.Rows[0]["memberid"].ToString();
                    Session["name"] = dt.Rows[0]["fullname"].ToString();
                    Session["role"] = "user";
                    Session["status"] = dt.Rows[0]["accountstatus"].ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials.');</script>");
                }
            }
            catch (ThreadAbortException ex)
            {
                throw;
            }
            catch (Exception ex1)
            {
                throw;
            }
        }
    }
}