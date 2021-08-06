<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Adminpublishermanagement.aspx.cs" Inherits="ElibraryManagement.Adminpublishermanagement" %>

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

    

    <section>
        <br /><div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4><b>Publisher Details</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/publisher.png" style="width:150px;" class="img-fluid" />                                        
                                    </center>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Publisher ID</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="text" class="form-control" placeholder="ID" aria-label="Recipient's username" aria-describedby="button-addon2" id="txt_authid">  --%> 
                                        <asp:TextBox class="form-control" placeholder="ID" aria-label="Recipient's username" aria-describedby="button-addon2" id="txt_pubid" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-secondary" ID="btngo" runat="server" Text="Go" OnClick="btn_go_Click" />  
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Publisher Name</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="text" class="form-control" placeholder="Author's Name" aria-label="Author's Name" aria-describedby="button-addon2" id="txt_authname">  --%>
                                        <asp:TextBox class="form-control" placeholder="Publisher name" aria-label="Recipient's username" aria-describedby="button-addon2" id="txt_pubname" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            

                            <div class="row">
                              <div class="col-4 mx-auto" align="center">                                    
                                    <br /><asp:Button class="btn btn-success" ID="btn_add1" runat="server" Text="Add" OnClick="btn_add1_Click" />                                  
                              </div> 
                                <div class="col-4" align="center">                                    
                                    <br />
                                    <asp:Button class="btn btn-primary" ID="btn_update1" runat="server" Text="Update" OnClick="btn_update1_Click" />   
                              </div> 
                                <div class="col-4" align="center">                                    
                                    <br />
                                    <asp:Button class="btn btn-danger" ID="btn_delete1" runat="server" Text="Delete" OnClick="btn_delete1_Click" />   
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
                                        <h4><b>Publisher List</b></h4>                                      
                                    </center>
                                </div>
                            </div><br />
                            <div class="row">
                                <%--<div class="col-md-6 mx-auto">
                                    Show&nbsp;<asp:DropDownList ID="ddl_showlist" runat="server">                                        
                                    </asp:DropDownList>&nbsp;entries :
                                </div>--%>
                                <div class="col-md-6 mx-auto">
                                    <div class="input-group mb-3">                                      
                                        <asp:TextBox class="form-control" placeholder="Search by first name" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtsearch" runat="server"></asp:TextBox>
                                      <asp:Button class="btn btn-outline-secondary" ID="buttonsearch" runat="server" Text="Search" OnClick="buttonsearch_Click"/>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="Gridview_publisher" class="table table-striped table-bordered" runat="server" AllowPaging="true" PageSize="4" OnPageIndexChanging="GridView_report_PageIndexChanging"></asp:GridView>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mx-auto">
                                    <%--<asp:Label ID="lbl_entries" runat="server" Text="Showing 1 to '<%# dt.Rows.Count.ToString() %>' entries" ></asp:Label>--%>
                                    <asp:Label ID="lbentries" runat="server"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:Button ID="btnreset" class="btn btn-outline-info" runat="server" Text="Reset" OnClick="btnreset_Click" style="margin-left:330px;"/>
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
