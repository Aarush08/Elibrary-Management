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
    public class OperationCURD
    {
        public SqlConnection conn;
        public SqlCommand command;
        //public MyData data;
        DataAccessLayer dal = new DataAccessLayer();
        private System.Data.DataTable dt = new System.Data.DataTable();

        public OperationCURD()
        {
            //add constructor logic here
        }


        /////////////////////// insert functions ///////////////////////

        public System.Data.DataTable insertauthor(string authid,string authname)
        {
            String str = @"insert into AuthorName (authorid,authorname) values (@authorid,@authorname)";

            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@authorid", SqlDbType.VarChar, 50);
            param[0].Value = authid;
            param[1] = new SqlParameter("@authorname", SqlDbType.VarChar, 50);
            param[1].Value = authname;


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

        public System.Data.DataTable insertpublisher(string pubid, string pubname)
        {
            String str = @"insert into PublisherMaster (publisherid,publishername) values (@publisherid,@publishername)";

            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@publisherid", SqlDbType.VarChar, 50);
            param[0].Value = pubid;
            param[1] = new SqlParameter("@publishername", SqlDbType.VarChar, 50);
            param[1].Value = pubname;

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

        public System.Data.DataTable insertbookmaster(string bookid, string bookname,string genre,string authorname,string publishername,string publishdate,string language,string edition,string bookcost
              ,string noofpages,string bookdesc)
        {
            String str = @"insert into BookMaster (bookid,bookname,genre,authorname,publishername,publishdate,language,edition,bookcost,noofpages,bookdescription) values (@bookid,@bookname,@genre,@authorname,
                                                    @publishername,@publishdate,@language,@edition,@bookcost,@noofpages,@bookdescription)";

            SqlParameter[] param = new SqlParameter[11];
            param[0] = new SqlParameter("@bookid", SqlDbType.VarChar, 50);
            param[0].Value = bookid;
            param[1] = new SqlParameter("@bookname", SqlDbType.VarChar, 50);
            param[1].Value = bookname;
            param[2] = new SqlParameter("@genre", SqlDbType.VarChar, 50);
            param[2].Value = genre;
            param[3] = new SqlParameter("@authorname", SqlDbType.VarChar, 50);
            param[3].Value = authorname;
            param[4] = new SqlParameter("@publishername", SqlDbType.VarChar, 50);
            param[4].Value = publishername;
            param[5] = new SqlParameter("@publishdate", SqlDbType.VarChar, 50);
            param[5].Value = publishdate;
            param[6] = new SqlParameter("@language", SqlDbType.VarChar, 50);
            param[6].Value = language;
            param[7] = new SqlParameter("@edition", SqlDbType.VarChar, 50);
            param[7].Value = edition;
            param[8] = new SqlParameter("@bookcost", SqlDbType.VarChar, 50);
            param[8].Value = bookcost;
            param[9] = new SqlParameter("@noofpages", SqlDbType.VarChar, 50);
            param[9].Value = noofpages;
            param[10] = new SqlParameter("@bookdescription", SqlDbType.VarChar, 50);
            param[10].Value = bookdesc;

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



        public System.Data.DataTable updateauthor(string authid, string authidprev ,string authname,string authnameprev)
        {
            //string str = "update AuthorMaster set ";
            //string str_where = string.Empty;
            //SqlParameter[] param = new SqlParameter[2];

            //if(authid != authidprev && authname == authnameprev)   //when only authorid is to be updated
            //{
            //    str += "authorid = @authorid ";
            //    str_where = "where authorid = @authid";  //prev author id
            //}
            //else if(authname != authnameprev && authid == authidprev)   //when only authorname is to be updated
            //{
            //    str += "authorname = @authorname ";
            //    str_where = "where authorid = @authid";
            //}
            //else if(authid != authidprev && authname != authnameprev)     //when both authorid and authorname are to be updated
            //{
            //    int count = 2;
            //    for (int i=1;i<=count;)
            //    {
            //        if(i < count)
            //        {
            //            string str1 = @"update AuthorMaster set authorid = @authorid where authorid = '@authid'";
            //            param = new SqlParameter[2];
            //            param[0] = new SqlParameter("@authid", SqlDbType.VarChar, 50);
            //            param[0].Value = authidprev;
            //            param[1] = new SqlParameter("@authorid", SqlDbType.VarChar, 50);
            //            param[1].Value = authid;
            //            i++;

            //            try
            //            {
            //                dal.GetDataTableQry(str1, param);                            
            //                //return dt;
            //            }
            //            catch (Exception ex1)
            //            {
            //                throw;
            //            }

            //        }
            //        else if ( i == count )
            //        {
            //            string str2 = @"update AuthorMaster set authorname = @authname where authorid = '@authid'";

            //            param = new SqlParameter[2];
            //            param[0] = new SqlParameter("@authid", SqlDbType.VarChar, 50);
            //            param[0].Value = authidprev;
            //            param[1] = new SqlParameter("@authname", SqlDbType.VarChar, 50);
            //            param[1].Value = authname;
            //            i++;

            //            try
            //            {
            //                dal.GetDataTableQry(str2, param);
            //                //return dt;
            //            }
            //            catch (Exception ex1)
            //            {
            //                throw;
            //            }
            //        }
            //        //return dt;
            //    }


            return dt;

        }

        public System.Data.DataTable deleteauthdetails(string authid)
        {
            string str = @"delete from AuthorName where authorid = @authid";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@authid", SqlDbType.VarChar, 50);
            param[0].Value = authid;

            try
            {
                dt = dal.GetDataTableQry(str, param);                
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable deletepubdetails(string pubid)
        {
            string str = @"delete from PublisherMaster where publisherid = @pubid";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@pubid", SqlDbType.VarChar, 50);
            param[0].Value = pubid;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable deletebookdetails(string bookid)
        {
            string str = @"delete from BookMaster where bookid = @bookid";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@bookid", SqlDbType.VarChar, 50);
            param[0].Value = bookid;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getauthordetails()
        {
            String str = @"select authorid 'Author Id',authorname 'Author Name' from AuthorName";

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

        public System.Data.DataTable getpublisherdetails()
        {
            String str = @"select publisherid 'Publisher Id',publishername 'Publisher Name' from PublisherMaster";

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

        public System.Data.DataTable getmemberdetails(string membid)
        {
            String str = @"select * from MemberMaster";
            string str_wh = "";

            if(membid != "")
            {
                str_wh = " where memberid = @memid";
                str = str + str_wh;

                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@memid", SqlDbType.VarChar, 50);
                param[0].Value = membid;

                try
                {
                    dt = dal.GetDataTableQry(str, param);
                    return dt;
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }
            else
            {
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

        public System.Data.DataTable getpublisherdetails(string pubid)
        {
            string str = @"select publishername from PublisherMaster where publisherid = @pubid";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@pubid", SqlDbType.VarChar, 50);
            param[0].Value = pubid;

            try
            {
                dt = dal.GetDataTableQry(str,param);
                return dt;
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getauthdetails(string authid)
        {
            string str = @"select authorname from AuthorName where authorid = @authid";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@authid", SqlDbType.VarChar, 50);
            param[0].Value = authid;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable getbysearch(string search)
        {
            String str = @"select authorid,authorname from AuthorName where authorname like '%"+search+"%'";

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

        public System.Data.DataTable getbysearchpub(string search)
        {
            String str = @"select publisherid,publishername from PublisherMaster where publishername like '%" + search + "%'";

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

        public System.Data.DataTable updatememberaccstatus(string memid,string acc)
        {
            string str = "";
            
            str = "update MemberMaster set accountstatus = @acc where memberid = @memid";
            
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@acc", SqlDbType.VarChar, 50);
            param[0].Value = acc;
            param[1] = new SqlParameter("@memid", SqlDbType.VarChar, 50);
            param[1].Value = memid;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public System.Data.DataTable deleteuser(string memid)
        {
            string str = "";

            str = "delete from MemberMaster where memberid = @memid";

            SqlParameter[] param = new SqlParameter[1];            
            param[0] = new SqlParameter("@memid", SqlDbType.VarChar, 50);
            param[0].Value = memid;

            try
            {
                dt = dal.GetDataTableQry(str, param);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}