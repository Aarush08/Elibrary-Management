using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Userprofile : System.Web.UI.Page
    {
        public System.Data.DataTable dt = new System.Data.DataTable();
        OperationCURD op = new OperationCURD();
        protected void Page_Load(object sender, EventArgs e)
        {
            string memberid = Request.QueryString["memid"].ToString();
            dt = op.getmemberdetails(memberid);            
        }
    }
}