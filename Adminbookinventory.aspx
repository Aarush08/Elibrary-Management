<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Adminbookinventory.aspx.cs" Inherits="ElibraryManagement.Adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--bootstrap css--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <%--datatables css--%>
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
    <%--fontawesome css--%>    
    <link href="lib/font-awesome/css/all.css" rel="stylesheet" />
    <%--jquery, bootstrap and popper js files--%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript">
        function raedURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <br /><div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4><b>Book Details</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="bookinventory/books1.png" id="imgview" style="width:100px;" class="img-fluid" />                                        
                                    </center>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12">                                    
                                    <div class="input-group mb-3">                                        
                                        <asp:FileUpload ID="fileupload" onchange="raedURL(this);" class="form-control-file border" runat="server"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mr-auto">
                                    <label>Book ID</label>
                                    <div class="input-group mb-3">                                        
                                        <asp:TextBox ID="txtbookid" runat="server" placeholder="ID" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>&nbsp;
                                        <button class="btn btn-primary" type="button" id="button-addon11">Go</button>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <label>Book Name</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="text" class="form-control" placeholder="Book Name" aria-label="Book" aria-describedby="button-addon2">--%>
                                        <asp:TextBox ID="txtbookname" runat="server" placeholder="Book name" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon5">Go</button>--%>                                        
                                    </div>
                                </div>                                
                            </div>
                            <div class="row">
                                <div class="col-md-8 mx-auto">
                                    <div class="row">
                                        <div class="col-md-6 mx-auto">
                                            <asp:Label ID="lbl_lang" runat="server" >Language</asp:Label>
                                            <div class="input-group mb-3">
                                                <asp:DropDownList ID="ddl_lang" runat="server" class="form-control">
                                            <asp:listitem Value="00">--Select--</asp:listitem> 
                                            <asp:listitem Value="01">English</asp:listitem>  
                                            <asp:listitem Value="02">Hindi</asp:listitem>  
                                            <asp:listitem Value="03">French</asp:listitem>  
                                            </asp:DropDownList>
                                            </div>                                            
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lbl_auth" runat="server" >Author Name</asp:Label>
                                            <div class="input-group mb-3">
                                                <asp:DropDownList ID="ddl_auth" runat="server" class="form-control">
                                            <asp:listitem Value="00">--Select--</asp:listitem> 
                                            <asp:listitem Value="01">J.K. Rowling</asp:listitem>  
                                            <asp:listitem Value="02">Mathew Kane</asp:listitem>  
                                            <asp:listitem Value="03">Bruce Wayne</asp:listitem>  
                                            </asp:DropDownList>
                                            </div>                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mx-auto">
                                            <asp:Label ID="lbl_pub" runat="server" >Publisher Name</asp:Label>
                                            <div class="input-group mb-3">
                                                <asp:DropDownList ID="ddl_publisher" runat="server" class="form-control">
                                            <asp:listitem Value="00">--Select--</asp:listitem> 
                                            <asp:listitem Value="01">M.R. Publishers</asp:listitem>  
                                            <asp:listitem Value="02">Creative Minds</asp:listitem>  
                                            <asp:listitem Value="03">Simon Publishers</asp:listitem>  
                                            </asp:DropDownList>
                                            </div>                                            
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lbl_publ" runat="server" >Publish Date</asp:Label>
                                            <div class="input-group mb-3">
                                                <%--<input type="date" class="form-control" aria-label="Book" aria-describedby="button-addon2">--%>
                                                <asp:TextBox ID="txtdate" runat="server" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>  
                                </div>  
                                <div class="col-md-4">
                                    <asp:Label ID="lbl_genre" runat="server">Genre</asp:Label>
                                    <div class="input-group mb-3">
                                        <asp:ListBox ID="lst_genre" runat="server" class="form-control" SelectionMode="Multiple">
                                            <asp:ListItem Text="Action" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Adventure" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Comedy" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Drama" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Mystery" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="Romance" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="Suspence" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="Thrill" Value="7"></asp:ListItem>
                                        </asp:ListBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mx-auto">
                                    <label>Edition</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="text" id="txt_edition" class="form-control" placeholder="Edition" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txt_edition" runat="server" placeholder="Edition" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Book Cost (per unit)</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" id="txt_cost" class="form-control" placeholder="Cost" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txtcost" runat="server" placeholder="Cost" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pages</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" id="txt_pages" class="form-control" placeholder="Pages" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txtpages" runat="server" placeholder="No. of pages" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mx-auto">
                                    <label>Actual Stock</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" id="txt_acst" class="form-control" placeholder="Actual stock" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txtactst" runat="server" placeholder="Actual Stock" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Current Stock</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" id="txt_cust" ReadOnly="readonly" class="form-control" placeholder="Current Stock" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txtcurst" runat="server" ReadOnly="true" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Issued Books</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" id="txt_isbk" ReadOnly="readonly" class="form-control" placeholder="Issued Books" aria-label="Book" aria-describedby="button-addon2"/>--%>
                                        <asp:TextBox ID="txtisbk" runat="server" ReadOnly="true" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                              <div class="col-12">
                                  <label>Book Decription</label> 
                                  <div class="input-group mb-3">                                      
                                  <%-- <textarea id="txt_desc" rows="2" cols="80" placeholder="Product Decription" disabled="disabled"></textarea>--%>
                                       <asp:TextBox ID="txt_desc" Rows="2" Columns="80" runat="server" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                      </div>
                              </div>                                                                   
                            </div>
                            <div class="row">                                
                                <div class="col-4 mx-auto">                                    
                                    <asp:Button class="btn btn-outline-primary btn-block" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
                                </div>   
                                <div class="col-4">
                                    <asp:Button class="btn btn-outline-warning btn-block" ID="btnUpd" runat="server" Text="Update" OnClick="btnUpd_Click"/>
                                </div>
                                <div class="col-4">
                                    <asp:Button class="btn btn-outline-danger btn-block" ID="btnDel" runat="server" Text="Delete" OnClick="btnDel_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    
                    <a class="text-decoration-none" href="Home.aspx"><< Back to HomePage</a>
                    <br />
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">                            
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4><b>Member List</b></h4>                                      
                                    </center>
                                </div>
                            </div><br />
                            <div class="row">
                                <%--<div class="col-md-6 mx-auto">
                                    Show&nbsp;<asp:DropDownList ID="ddl_showlist" runat="server">
                                        <asp:ListItem Value="0">10</asp:ListItem>
                                    </asp:DropDownList>&nbsp;entries :
                                </div>--%>
                                <div class="col-md-6">
                                    <div class="input-group mb-3">
                                      <%--<input type="text" class="form-control"  aria-label="Search bar" aria-describedby="button-addon2">--%>
                                      <asp:TextBox ID="txtsearch" runat="server" class="form-control" aria-label="Member" aria-describedby="button-addon2"></asp:TextBox>
                                      <button class="btn btn-outline-secondary" type="button" id="button-addon3">Search</button>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="Gridview3" class="table table-striped table-bordered" runat="server"></asp:GridView>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label ID="lbl_entries" runat="server" Text="Showing 1 to 5 of 5 entries" ></asp:Label>
                                </div>
                                <%--<div class="col-md-6">
                                    <nav aria-label="Page navigation example" style="margin-left: 224px;">
                                      <ul class="pagination">
                                        <li class="page-item">
                                          <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                          </a>
                                        </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                          <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                          </a>
                                        </li>
                                      </ul>
                                    </nav>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <br />
               
                    <br />
                </div>
            </div>
        </div><br />
    </section>

</asp:Content>
