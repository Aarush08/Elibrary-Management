using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Adminpublishermanagement : System.Web.UI.Page
    {
        public System.Data.DataTable dt = new System.Data.DataTable();
        OperationCURD op = new OperationCURD();
        OperationSignup op1 = new OperationSignup();
        public int count;
        public string auid = string.Empty, auname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillgrid();
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        protected void fillgrid()
        {
            try
            {
                dt = op.getpublisherdetails();
                count = dt.Rows.Count;
                Gridview_publisher.DataSource = dt;
                Gridview_publisher.DataBind();
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
                dt = op.getbysearchpub(search);
                count = dt.Rows.Count;
                Gridview_publisher.DataSource = dt;
                Gridview_publisher.DataBind();
                lbentries.Text = "Showing 1 to " + count.ToString() + " entries.";
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        protected void buttonsearch_Click(object sender, EventArgs e)
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
            Gridview_publisher.PageIndex = e.NewPageIndex;
            Gridview_publisher.DataBind();
        }

        //Go button click event
        protected void btn_go_Click(object sender, EventArgs e)
        {
            try
            {
                dt = op.getpublisherdetails(txt_pubid.Text);
                if (dt.Rows.Count > 0)
                {
                    txt_pubname.Text = dt.Rows[0]["publishername"].ToString();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('No publisher with such publisher id'); window.open('Adminpublishermanagement.aspx','_self');", true);
                }
                Session["pubid"] = txt_pubid.Text;
                Session["pubname"] = txt_pubname.Text;
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        //Add button click event
        protected void btn_add1_Click(object sender,EventArgs e)
        {
            try
            {
                if (txt_pubid.Text != "" && txt_pubname.Text != "")
                {
                    //check whether same author is already present
                    dt = op1.getpublisherid();
                    bool flag = false;
                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            if (dt.Rows[i]["publisherid"].ToString().Trim() == txt_pubid.Text)
                            {
                                flag = true;
                            }
                        }
                        //flag = true;
                    }
                    if (flag == true)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Publisher with same details already exist! Please add different publisher.'); window.open('Adminpublishermanagement.aspx','_self');", true);
                    }
                    else
                    {
                        string authid = txt_pubid.Text;
                        string authname = txt_pubname.Text;
                        op.insertpublisher(authid, authname);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Publisher added sucessfully'); window.open('Adminpublishermanagement.aspx','_self');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Please enter both publisherid and publishername to add correctly.'); window.open('Adminpublishermanagement.aspx','_self');", true);
                }

            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }

        //Update button click event
        protected void btn_update1_Click(object sender, EventArgs e)
        {

        }

        //Delete button click event
        protected void btn_delete1_Click(object sender, EventArgs e)
        {
            try
            {
                op.deletepubdetails(txt_pubid.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Publisher deleted successfully.'); window.open('Adminpublishermanagement.aspx','_self');", true);
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }
    }
}