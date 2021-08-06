<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="ElibraryManagement.Userprofile" %>

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
    <style>
        span {
  content: "\00B7";
}
    </style>

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
                                        <img src="images/imgs/generaluser.png" style="width:150px;" class="img-fluid" />                                        
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4><b>Your Profile</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <% if( dt.Rows[0]["accountstatus"].ToString() == "active" ) %>
                                        <% { %>
                                        <h6>Account Status<span> &bull;&nbsp;</span><asp:Label ID="lbl" class="badge rounded-pill bg-success"
                                            runat="server" text="Active" ></asp:Label></h6> 
                                        <% } %>
                                        <% else if( dt.Rows[0]["accountstatus"].ToString() == "pending" ) %>
                                        <% { %>
                                        <h6>Account Status<span> &bull;&nbsp;</span><asp:Label ID="lbl1" class="badge rounded-pill bg-warning"
                                            runat="server" text="pending" ></asp:Label></h6> 
                                        <% } %>
                                        <% else %>
                                        <% { %>
                                        <h6>Account Status<span> &bull;&nbsp;</span><asp:Label ID="lbl2" class="badge rounded-pill bg-danger"
                                            runat="server" text="deactive" ></asp:Label></h6> 
                                        <% } %>

                                    </center>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Full Name</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_fulname" type="text" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_date" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Contact Number</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_cntno"  Maxlength="10" CssClass="form-control" runat="server" placeholder="Contact No." TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Email Id</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_email" type="email" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mr-auto">
                                    <label>State</label>
                                    <div class="form-group">
                                    <asp:DropDownList ID="ddl_state" runat="server" class="form-control">
                                    </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                    <div class="form-group">
                                    <asp:DropDownList ID="ddl_city" runat="server" class="form-control">
                                    </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pincode</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_pincode"  Maxlength="6" class="form-control" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>Full Address</label>
                                    <asp:TextBox ID="txt_address" class="form-control" runat="server" placeholder="Enter full address" TextMode="MultiLine" ></asp:TextBox>
                                </div>
                            </div>
                            

                        </div>
                    </div>
                    <br />
                    <div class="card">
                        <div class="card-body">                            
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <h4><span class="badge bg-primary">Login Credentials</span></h4><br />
                                   </center>    
                             </div>
                            </div>
                                 <div class="row">
                                     <div class="col-md-4 mr-auto">
                                    <label>Member ID</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_userid" Class="form-control" ReadOnly="true" runat="server" placeholder="Enter user id"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Old Password</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_oldpass" type="password" ReadOnly="true" Class="form-control" runat="server" placeholder="Enter password"></asp:TextBox>
                                    </div>
                                </div>
                                     <div class="col-md-4">
                                    <label>New Password</label>
                                    <div class="form-group">
                                    <asp:TextBox ID="txt_newpass" type="password" Class="form-control" runat="server" placeholder="Enter password"></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                            <div class="row">                                
                                <div class="col-8 mx-auto" aligncontent="center" >                                    
                                    <br /><input type="button" id="btn_update" runat="server" class="btn btn-danger btn-block text-decoration-none" value="Update" />
                                </div>                                    
                            </div>
                            
                           </div>                   
                    </div>
                    <a class="text-decoration-none" href="Home.aspx"><< Back to HomePage</a>
                    <br />
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/books.png" style="width:120px;" class="img-fluid" />                                        
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4><b>Your Issued books</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <asp:Label ID="lbl_infobook" class="badge rounded-pill bg-success" runat="server" text="Info about book due date" ></asp:Label>                                      
                                    </center>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="Gridview1" class="table table-striped table-bordered" runat="server"></asp:GridView>
                                </div>
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
