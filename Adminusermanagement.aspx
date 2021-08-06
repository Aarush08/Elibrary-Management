<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Adminusermanagement.aspx.cs" Inherits="ElibraryManagement.Adminusermanagement" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%--jquery, bootstrap and popper js files--%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thread></thread>").append($(this).find("tr:second"))).dataTable();
        });
    </script>--%>

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
                                        <h4><b>Member Details</b></h4>                                      
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/generaluser.png" style="width:100px;" class="img-fluid" />                                        
                                    </center>
                                </div>+
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-3 mr-auto">
                                    <label>Member ID</label>
                                    <div class="input-group mb-3">                                        
                                        <asp:TextBox class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" id="txt_memid" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="btn_go1" runat="server" Text="Go" OnClick="btn_go1_Click"/>  
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label>Full Name</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="text" class="form-control" readonly="readonly" placeholder="Book ID" aria-label="Member Name" aria-describedby="button-addon2">--%>
                                        <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtname" runat="server"></asp:TextBox>                                     
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Account Status</label>
                                    <div class="input-group mb-3">                                        
                                        <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtaccsts" runat="server"></asp:TextBox>&nbsp;
                                        <asp:LinkButton class="btn btn-success mr-1" ID="linkbtn_active" runat="server" OnClick="linkbtn_active_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="linkbtn_pause" runat="server" OnClick="llinkbtn_pause_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="linkbtn_deactive" runat="server" OnClick="linkbtn_deactive_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                        <%--<asp:Button ID="btnactive" runat="server" class="btn-close" aria-label="Close" OnClick="btn_active_Click"><span aria-hidden="true">&times;</span></asp:Button>--%>
                                        <%--<a onclick="btn_pause_Click()"><i class="fas fa-pause-circle btn btn-warning"></i></a>&nbsp; 
                                        <a onclick="btn_deactive_Click()"><i class="fas fa-times-circle btn btn-danger"></i></a>--%>
                                       <%--<asp:ImageButton ID="btn_active" runat="server" Height="32px" ImageUrl="~/images/imgs/check-icon-260nw-491675362.jpg"
                                         Width="35px" Visible="true" OnClick="btn_active_Click" />&nbsp; 
                                        <asp:ImageButton ID="btn_pause" runat="server" Height="32px" ImageUrl="~/images/imgs/pause-vector-icon-260nw-1041391603.jpg"
                                         Width="35px" Visible="true" OnClick="btn_pause_Click" /> &nbsp;
                                        <asp:ImageButton ID="btn_deactive" runat="server" Height="32px" ImageUrl="~/images/imgs/334-3349815_red-circle-x-icon.png"
                                        Width="35px" Visible="true" OnClick="btn_deactive_Click" />--%>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mr-auto">
                                    <label>DOB</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtdob" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Contact No</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtcontact" runat="server"></asp:TextBox>                                       
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Email</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtemail" runat="server"></asp:TextBox>                                       
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mr-auto">
                                    <label>State</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" class="form-control" placeholder="State" ReadOnly="readonly" aria-label="Book" aria-describedby="button-addon2">    --%>
                                       <asp:DropDownList ID="ddl_state" runat="server" Enabled="false">
                                           <asp:ListItem Value="0">-- ALL --</asp:ListItem>
                                           <asp:ListItem Value="01">Uttar Pradesh</asp:ListItem>
                                           <asp:ListItem Value="03">Rajasthan</asp:ListItem>
                                           <asp:ListItem Value="03">Maharashtra</asp:ListItem>
                                           <asp:ListItem Value="04">Himachal Pradesh</asp:ListItem>
                                           <asp:ListItem Value="05">Karnataka</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                    <div class="input-group mb-3">
                                        <%--<input type="number" class="form-control" placeholder="City" ReadOnly="readonly" aria-label="Book" aria-describedby="button-addon2">    --%>
                                       <asp:DropDownList ID="ddl_city" runat="server" Enabled="false">
                                           <asp:ListItem Value="0">-- ALL --</asp:ListItem>
                                           <asp:ListItem Value="01">Agra</asp:ListItem>
                                           <asp:ListItem Value="02">Bareilly</asp:ListItem>
                                           <asp:ListItem Value="03">Kota</asp:ListItem>
                                           <asp:ListItem Value="04">Jaipur</asp:ListItem>
                                           <asp:ListItem Value="05">Mumbai</asp:ListItem>
                                           <asp:ListItem Value="06">Pune</asp:ListItem>
                                           <asp:ListItem Value="07">Shimla</asp:ListItem>
                                           <asp:ListItem Value="08">Manali</asp:ListItem>
                                           <asp:ListItem Value="09">Bangalore</asp:ListItem>
                                           <asp:ListItem Value="10">Mysuru</asp:ListItem>
                                        </asp:DropDownList>                                       
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pincode</label>
                                    <div class="input-group mb-3">
                                          <asp:TextBox class="form-control" ReadOnly="true" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtpincode" runat="server"></asp:TextBox>                                   
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                              <div class="col-12">
                                  <label>Full Postal Address</label> 
                                  <div class="input-group mb-3">                                   
                                   <%--<textarea id="txt_address" rows="2" cols="80" placeholder="Full Address" disabled="disabled"></textarea>--%>
                                      <asp:TextBox class="form-control" ReadOnly="true" TextMode="MultiLine" aria-label="Recipient's username" aria-describedby="button-addon2" id="txtaddress" runat="server"></asp:TextBox>
                                      </div>
                              </div>                                                                   
                            </div>
                            <div class="row">                                
                                <div class="col-8" style="margin-left: 90px;">
                                    <%--<button class="btn btn-block btn-info" type="button" id="button-addon4">Delete User Permanently</button>--%>
                                    <asp:Button ID="btndeleteuser" runat="server" class="btn btn-block btn-info" Text="Delete User Permanently" OnClick="btndeleteuser_Click"/>
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
                                      <input type="text" class="form-control"  aria-label="Search bar" aria-describedby="button-addon2">
                                      <button class="btn btn-outline-secondary" type="button" id="button-addon3">Search</button>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="grid_memberdetail" class="table table-striped table-bordered" runat="server" AllowPaging="true" PageSize="4" AutoGenerateColumns="false"
                                        OnPageIndexChanging="grid_memberdetail_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No" >
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                        &nbsp;<%#Container.DataItemIndex+1%> 
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ID">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "memberid") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "fullname") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="DOB">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lbldob" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "dob") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Contact No">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblcontact" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "contact_no") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="E mail">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblemail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "email") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="City">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblcity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "city") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Address">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lbladd" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "fulladdress") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Account Status">
                                                <HeaderStyle  CssClass="gridheader"/>
                                                    <ItemTemplate>
                                                         <asp:Label ID="lblacstst" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "accountstatus") %>' >  </asp:Label>
                                                    </ItemTemplate>
                                           </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mx-auto">
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
