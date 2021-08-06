<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="ElibraryManagement.Adminlogin" %>

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

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section><br />
        <div class="container">
           
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/adminuser.png" style="width:150px;" class="img-fluid" /><br />
                                    </center>                                    
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <p><b>Admin Login</b></p>
                                    </center>                                    
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <div class="form-group">
                                            
                                        <asp:TextBox ID="txt_adminusername" type="text" CssClass="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                         </div>   
                                    </center>                                    
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <div class="form-group">
                                        <asp:TextBox ID="txt_adminpass" type="password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox><br />
                                            </div>
                                    </center>                                    
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <center>
                                        <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block" ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
                                            </div>
                                     </center>                                  
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-12">
                                    <center>
                                        <div class="form-group">
                                        <a href="Signup.aspx"><input type="button" id="btn_admsignup" Value="Sign Up" class="btn btn-primary btn-block" /></a> 
                                             </div>
                                     </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    
                                        <div class="form-group">
                                            <a href="Home.aspx" class="text-decoration-none"><< Back To HomePage</a>
                                        </div>                                        
                                     
                                </div>
                            </div>
                        </div>
                    </div>

                    
                </div>
            </div>

        </div><br />
    </section>

</asp:Content>
