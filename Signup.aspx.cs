using System;
using System.Data;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;


namespace ElibraryManagement
{
    public partial class Signup : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private System.Data.DataTable dt = new System.Data.DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            filldropdowns();
            if (!IsPostBack)
            {
                filldropdowns();
            }
        }

        protected void filldropdowns()
        {
            fillCity();
            fillstate();
        }

        protected void fillCity()
        {
            try
            {
                OperationSignup op = new OperationSignup();
                dt = op.getcitylist();
                ddl_city.DataTextField = "cityname";
                ddl_city.DataValueField = "cityid";
                ddl_city.DataSource = dt;
                ddl_city.DataBind();                
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void fillstate()
        {
            try
            {
                OperationSignup op = new OperationSignup();
                dt = op.getstatelist();
                ddl_state.DataTextField = "statename";
                ddl_state.DataValueField = "stateid";
                ddl_state.DataSource = dt;
                ddl_state.DataBind();                
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            try
            {
                string fullname = txt_fulname.Text;
                string dob = txt_date.Text;
                string contact = txt_cntno.Text;
                string email = txt_email.Text;
                string state = ddl_state.SelectedItem.Text;
                string city = ddl_city.SelectedItem.Text;
                string pincode = txt_pincode.Text;
                string fulladd = txt_address.Text;
                string membid = txt_userid.Text;
                string pass = txt_userpass.Text;
                string accstatus = "pending";
                bool flag = false;

                //check for same member id
                OperationSignup op = new OperationSignup();
                dt = op.getmemberid();
                if(dt.Rows.Count > 0)
                {
                    for(int i=0; i< dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i]["memberid"].ToString() == membid)
                            flag = true;
                    }                    
                }
                if(flag == true)
                {
                    Response.Write("<script>alert('Same Username already exists.');</script>");
                }
                else
                {
                    //insert member details into db
                    op.insertMember(fullname, dob, contact, email, state, city, pincode, fulladd, membid, pass, accstatus);
                    Response.Write("<script>alert('Succesfully Registered. Now login from Login Page.');</script>");
                    Response.Redirect("Login.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}