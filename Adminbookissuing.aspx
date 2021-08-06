<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Adminbookissuing.aspx.cs" Inherits="ElibraryManagement.Adminbookissuing" %>

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
                                        <h4><b>Book Issuing</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/books.png" style="width:100px;" class="img-fluid" />                                        
                                    </center>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Member ID</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Member ID" aria-label="Member" aria-describedby="button-addon2">
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon4">Go</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book ID</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Book ID" aria-label="Book" aria-describedby="button-addon2">
                                        <button class="btn btn-outline-secondary" type="button" id="button-addon4">Go

                                        </button>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Member Name</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control"  ReadOnly="readonly" aria-label="Member" aria-describedby="button-addon2">
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon4">Go</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" ReadOnly="readonly" aria-label="Book" aria-describedby="button-addon2">
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon5">Go</button>--%>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mr-auto">
                                    <label>Start Date</label>
                                    <div class="input-group mb-3">
                                        <input type="date" class="form-control" aria-label="strtdate" aria-describedby="button-addon2">
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon4">Go</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>End Date</label>
                                    <div class="input-group mb-3">
                                        <input type="date" class="form-control" aria-label="enddate" aria-describedby="button-addon2">
                                        <%--<button class="btn btn-outline-secondary" type="button" id="button-addon6">Go</button> --%>                                       
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                              <div class="col-6 mx-auto">                                    
                                    <br /><input type="button" id="btn_issue" runat="server" class="btn btn-success btn-block text-decoration-none" value="Issue" />
                              </div> 
                                <div class="col-6">                                    
                                    <br /><input type="button" id="btn_return" runat="server" class="btn btn-primary btn-block text-decoration-none" value="Return" />
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
                                        <h4><b>Issued Book List</b></h4>                                      
                                    </center>
                                </div>
                            </div><br />
                            <div class="row">
                                <div class="col-md-6 mx-auto">
                                    Show&nbsp;<asp:DropDownList ID="ddl_showlist" runat="server">
                                        <asp:ListItem Value="0">10</asp:ListItem>
                                    </asp:DropDownList>&nbsp;entries :
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group mb-3">
                                      <input type="text" class="form-control"  aria-label="Search bar" aria-describedby="button-addon2">
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
                                <div class="col-md-6 mx-auto">
                                    <asp:Label ID="lbl_entries" runat="server" Text="Showing 1 to 5 of 5 entries" ></asp:Label>
                                </div>
                                <div class="col-md-6">
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
