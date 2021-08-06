using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Adminauthormanagement : System.Web.UI.Page
    {
        public System.Data.DataTable dt = new System.Data.DataTable();
        OperationCURD op = new OperationCURD();
        OperationSignup op1 = new OperationSignup();
        public int count;
        public string auid = string.Empty,auname=string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillgrid();
            }
            catch(Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }            
        }

        protected void fillgrid()
        {
            try
            {
                dt = op.getauthordetails();
                count = dt.Rows.Count;
                Gridview2.DataSource = dt;
                Gridview2.DataBind();               
                lbentries.Text = "Showing 1 to " + count.ToString() + " entries.";
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        protected void fillgridbysearch()
        {
            try
            {
                string search = txtsearch.Text;
                dt = op.getbysearch(search);
                count = dt.Rows.Count;
                Gridview2.DataSource = dt;
                Gridview2.DataBind();                
                lbentries.Text = "Showing 1 to " + count.ToString() + " entries.";
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        protected void buttonsearch_Click(object sender,EventArgs e)
        {
            fillgridbysearch();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            fillgrid();
        }

        protected void GridView_report_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            fillgrid();
            Gridview2.PageIndex = e.NewPageIndex;
            Gridview2.DataBind();
        }

        //add button click event
        protected void btn_add1_Click(object sender, EventArgs e)
        {            
            try
            {                
                if(txt_authid.Text != "" && txt_authname.Text != "")
                {
                    //check whether same author is already present
                    dt = op1.getauthorid();
                    bool flag = false;
                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            if (dt.Rows[i]["authorid"].ToString().Trim() == txt_authid.Text)
                            {
                                flag = true;
                            }
                        }
                        //flag = true;
                    }
                    if (flag == true)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Author with same details already exist! Please add different author.'); window.open('Adminauthormanagement.aspx','_self');", true);
                    }
                    else
                    {
                        string authid = txt_authid.Text;
                        string authname = txt_authname.Text;
                        op.insertauthor(authid, authname);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Author added sucessfully'); window.open('Adminauthormanagement.aspx','_self');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Please enter both authorid and authorname to add correctly.'); window.open('Adminauthormanagement.aspx','_self');", true);
                }
                
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }

        }

        //update button click event
        protected void btn_update1_Click(object sender, EventArgs e)
        {
            try
            {  
                //modify update part , current one not working
                
                //op.updateauthor(txt_authid.Text, Session["auid"].ToString(), txt_authname.Text, Session["auname"].ToString());
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Author details updated sucessfully'); window.open('Adminauthormanagement.aspx','_self');", true);
            }
            catch(Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        //delete button click event
        protected void btn_delete1_Click(object sender, EventArgs e)
        {
            try
            {
                op.deleteauthdetails(txt_authid.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Author deleted successfully.'); window.open('Adminauthormanagement.aspx','_self');", true);
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        //go button click event 
        protected void btngo_Click(object sender, EventArgs e)
        {            
            try
            {
                dt = op.getauthdetails(txt_authid.Text);
                if (dt.Rows.Count > 0)
                {
                    txt_authname.Text = dt.Rows[0]["authorname"].ToString();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('No author with such author id'); window.open('Adminauthormanagement.aspx','_self');", true);
                }
                Session["auid"] = txt_authid.Text;
                Session["auname"] = txt_authname.Text;
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        //check if author aready exists
        //bool checkauthorid(string authid)
        //{
        //    try
        //    {
        //        dt = op1.getauthorid();
        //        bool flag = false;
        //        if (dt.Rows.Count > 0)
        //        {
        //            for (int i = 0; i < dt.Rows.Count; i++)
        //            {
        //                if (dt.Rows[i]["authorid"].ToString().Trim() == authid)
        //                {
        //                    flag = true;
        //                }
        //            }
        //            //flag = true;
        //        }
        //        if (flag == true)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Redirect("Errorpage.aspx");
        //    }

        //}
    }
}