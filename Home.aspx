<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/MasterMain.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ElibraryManagement.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="CSS1/homecss.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section style="width:100%" >
        <img src="images/imgs/home-bg.jpg" class="img-fluid" />
    </section>

    <section style="width:100%;" >
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h1>Our main features</h1>
                    <p><b>Our three primary features : </b></p>
                    </center>
                </div>
            </div>
            <%--<div class="row">
                <div class="col-12">
                    <iframe width="1280" height="720" src="https://www.youtube.com/embed/fH2wgReT0RI?list=PLIY8eNdw5tW_ZQawyxK0Dd1cZXwcNFWn8"
        title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
        picture-in-picture"
        allowfullscreen="true"></iframe>
                </div>
            </div>--%>

            <div class="row" >
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/digital-inventory.png" style="width:200px;height:200px;" />
                    <h4>Digital Book Inventory</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/search-online.png" style="width:200px;height:200px;" />
                    <h4>Search Books</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/defaulters-list.png" style="width:200px;height:200px;" />
                    <h4>Default List</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
            </div>

        </div>
    </section>

    <section style="width:100%;"> 
        <img src="images/imgs/in-homepage-banner.jpg" class="img-fluid" />
    </section>

    <section>
        <div>
            <div class="row">
                <div class="col-12">
                    <center>
                    <h1>Our Process</h1>
                    <p><b>We have a simple 3 steps process</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/sign-up.png" class="homeimg" />
                    <h4>Sign Up</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/search-online.png" class="homeimg" />
                    <h4>Search Books</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img src="images/imgs/library.png" class="homeimg" />
                    <h4>Visit Us</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
                        text ever since the 1500s</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>


