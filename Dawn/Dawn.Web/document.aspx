<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="document.aspx.cs" Inherits="Dawn.Web.document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="home.aspx">Home</a>
            </li>
            <li>
                <a href="home.aspx">Service</a>
            </li>
            <li class="active">
                <a href="document.aspx">Documentation</a>
            </li>
        <%--    <li>
                <a href="http://coreos.com/blog/">Blog</a>
            </li>--%>
            <li>
                <a href="about.aspx">About</a>
            </li>
            <li>
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="masthead hexagons coreos-header" style="height: 150px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Documentation</h1>
                    <p></p>
                </div>
                <p>
                    <div class="other_banner_header" style="position:inherit; float:right; margin-right:50px;">Duis eget nisl sit amet eros sagittis</div>
                </p>
                
                <!--/.col-lg-12-->
            </div>
            <!--/.row-->
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="coreos-docs-supernav">
                    <ul class="nav">
                        <li class="active"><a href="content/doc/bikeinfo.xls">E-Bike Info</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="coreos-docs">
                    <h1>E-Bike Basic Infomation</h1>

                    <p>This Document Present some common information about our E-bike.If you want to know more basic information about the e-bike,we suggest you to download the document and compare each other.</p>

                    <a id="download-and-install-vagrant"></a>
                    <h4 style="font-weight: 400;color: #419eda;text-shadow: 0 1px 0 #fff;">Download E-Bike Basic Infomation Document</h4>

                    <p>
                       <a href="content/doc/bikeinfo.xls"><img src="images/downdoc.png" width="60px" height="60px" alt="click here to download..."/></a>
                    </p>

                   
                </div>
                <!--/.coreos-docs-->
            </div>
        </div>

        <!-- Quick back to top
      <a href="#" class="bs-top">
        Back to top
      </a> -->
    </div>

</asp:Content>
