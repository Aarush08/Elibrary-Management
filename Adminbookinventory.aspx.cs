using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Adminbookinventory : System.Web.UI.Page
    {
        public System.Data.DataTable dt = new System.Data.DataTable();
        OperationCURD op = new OperationCURD();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Add button click event
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string bookid = txtbookid.Text, bookname = txtbookname.Text, genre = lbl_genre.Text, authorname = ddl_auth.SelectedItem.Text, publishername = ddl_publisher.SelectedItem.Text, publishdate = txtdate.Text,
                lang = ddl_lang.SelectedItem.Text, edition = txt_edition.Text, bookcost = txtcost.Text, noofpages = txtpages.Text, bookdes = txt_desc.Text;

            op.insertbookmaster(bookid, bookname, genre, authorname, publishername, publishdate, lang, edition, bookcost, noofpages, bookdes);
        }

        //Update button click event
        protected void btnUpd_Click(object sender, EventArgs e)
        {

        }

        //Delete button click event
        protected void btnDel_Click(object sender, EventArgs e)
        {

        }
    }
}