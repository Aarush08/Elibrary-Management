using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Adminusermanagement : System.Web.UI.Page
    {
        public System.Data.DataTable dt = new System.Data.DataTable();
        OperationCURD op = new OperationCURD();
        public int count;
        string temp = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrid();
            if(!IsPostBack)
            {
                if(Session["memid"] != null)
                {
                    fillmemberdetails(Session["memid"].ToString());
                }
                else
                {
                    Session["memid"] = "";
                    fillmemberdetails(Session["memid"].ToString());
                }                
            }
        }

        protected void fillgrid()
        {
            try
            {
                dt = op.getmemberdetails(temp);
                count = dt.Rows.Count;
                grid_memberdetail.DataSource = dt;
                grid_memberdetail.DataBind();
                lbl_entries.Text = "Showing 1 to " + count.ToString() + " entries.";
            }
            catch (Exception ex)
            {
                Response.Redirect("Errorpage.aspx");
            }
        }
        protected void linkbtn_active_Click(object sender, EventArgs e)
        {
            updatememberdetails(txt_memid.Text,"active");
            fillmemberdetails(txt_memid.Text);
            Session["memid"] = txt_memid.Text;
        }
        protected void llinkbtn_pause_Click(object sender, EventArgs e)
        {
            updatememberdetails(txt_memid.Text, "pending");
            fillmemberdetails(txt_memid.Text);
            Session["memid"] = txt_memid.Text;
        }
        protected void linkbtn_deactive_Click(object sender, EventArgs e)
        {
            updatememberdetails(txt_memid.Text, "deactive");
            fillmemberdetails(txt_memid.Text);
            Session["memid"] = txt_memid.Text;
        }
        protected void grid_memberdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            fillgrid();
            grid_memberdetail.PageIndex = e.NewPageIndex;
            grid_memberdetail.DataBind();
        }

        protected void btn_go1_Click(object sender, EventArgs e)
        {            
            fillmemberdetails(txt_memid.Text);
        }

        public void fillmemberdetails(string membid)
        {
            //check whether member id exist or not            
            if (membid == "")
            {
                txtname.Text = "";
                txt_memid.Text = "";
                txtdob.Text = "";
                txtcontact.Text = "";
                txtaddress.Text = "";
                txtemail.Text = "";
                ddl_city.SelectedItem.Text = "--Select Item--";
                txtpincode.Text = "";
                ddl_state.SelectedItem.Text = "--Select Item--";
                txtaccsts.Text = "";
            }
            else
            {
                System.Data.DataTable dt1 = op.getmemberdetails(membid);
                if (dt1.Rows.Count > 0)
                {
                    txtname.Text = dt1.Rows[0]["fullname"].ToString();
                    txt_memid.Text = dt1.Rows[0]["memberid"].ToString();
                    txtdob.Text = dt1.Rows[0]["dob"].ToString();
                    txtcontact.Text = dt1.Rows[0]["contact_no"].ToString();
                    txtaddress.Text = dt1.Rows[0]["fulladdress"].ToString();
                    txtemail.Text = dt1.Rows[0]["email"].ToString();
                    ddl_city.SelectedItem.Text = dt1.Rows[0]["city"].ToString();
                    txtpincode.Text = dt1.Rows[0]["pincode"].ToString();
                    ddl_state.SelectedItem.Text = dt1.Rows[0]["state"].ToString();
                    txtaccsts.Text = dt1.Rows[0]["accountstatus"].ToString();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('No member with such member id'); window.open('Adminusermanagement.aspx','_self');", true);
                }
            }           

        }        

        public void updatememberdetails(string memberid,string acc)
        {
            op.updatememberaccstatus(memberid, acc);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Member details updated successfully'); window.open('Adminusermanagement.aspx','_self');", true);
        }

        protected void btndeleteuser_Click(object sender, EventArgs e)
        {
            op.deleteuser(txt_memid.Text);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('User deleted successfully !'); window.open('Adminusermanagement.aspx','_self');", true);
            fillmemberdetails("");
        }
    }
}