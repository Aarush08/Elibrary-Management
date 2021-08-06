using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class MasterMain : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton2.Visible = true;  //user login link btn
                    LinkButton3.Visible = true;  //sign up link btn

                    LinkButton4.Visible = false;   //logout link btn
                    btn_user1.Visible = false;      //Hello user btm

                    adminlogin.Visible = true;      //adminlogin link btn
                    author.Visible = false;       //author management link btn
                    publisher.Visible = false;      //publisher management link btn
                    bookinv.Visible = false;        //book inventory link btn
                    bookiss.Visible = false;        //book issue link btn
                    membermng.Visible = false;      //member management link btn

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false;  //user login link btn
                    LinkButton3.Visible = false;  //sign up link btn

                    LinkButton4.Visible = true;   //logout link btn
                    btn_user1.Visible = true;      //Hello user btn
                    btn_user1.Text = "Hello "+Session["username"].ToString();

                    adminlogin.Visible = true;      //adminlogin link btn
                    author.Visible = false;       //author management link btn
                    publisher.Visible = false;      //publisher management link btn
                    bookinv.Visible = false;        //book inventory link btn
                    bookiss.Visible = false;        //book issue link btn
                    membermng.Visible = false;      //member management link btn
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false;  //user login link btn
                    LinkButton3.Visible = false;  //sign up link btn

                    LinkButton4.Visible = true;   //logout link btn
                    btn_user1.Visible = true;      //Hello user btn
                    btn_user1.Text = "Hello Admin";

                    adminlogin.Visible = false;      //adminlogin link btn
                    author.Visible = true;       //author management link btn
                    publisher.Visible = true;      //publisher management link btn
                    bookinv.Visible = true;        //book inventory link btn
                    bookiss.Visible = true;        //book issue link btn
                    membermng.Visible = true;      //member management link btn
                }
            }
            catch(Exception ex)
            {
                throw;
            }
            
        }

        protected void LinkButton4_Click(Object sender,EventArgs e)
        {
            Session["username"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton2.Visible = true;  //user login link btn
            LinkButton3.Visible = true;  //sign up link btn

            LinkButton4.Visible = false;   //logout link btn
            btn_user1.Visible = false;      //Hello user btn

            adminlogin.Visible = true;      //adminlogin link btn
            author.Visible = false;       //author management link btn
            publisher.Visible = false;      //publisher management link btn
            bookinv.Visible = false;        //book inventory link btn
            bookiss.Visible = false;        //book issue link btn
            membermng.Visible = false;      //member management link btn

            Response.Redirect("Home.aspx");
        }

        protected void btn_user1_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx?memid="+Session["username"].ToString());

        }

    }
}