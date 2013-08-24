<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Dawn.Web.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="home.aspx">Home</a>
            </li>
             <li>
                <a href="list.aspx">Service</a>
            </li>
            <li>
                <a href="document.aspx">Documentation</a>
            </li>
          <%--  <li>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page content of course! -->
    <div class="masthead hexagons">
        <div class="container">
            <h1>A new way to think about servers</h1>
            <a href="https://coreos.wufoo.com/forms/z7x4m1/" class="btn btn-large btn-primary masthead-action" onclick="window.open(this.href,  null, &#39;height=1039, width=680, toolbar=0, location=0, status=1, scrollbars=1, resizable=1&#39;); return false">Join the Developer Alpha</a>
            <p class="button-subtext">CoreOS is Linux for massive server deployments</p>
        </div>
        <!--/.container-->
    </div>
    <!--/.masthead-->

    <div class="container">
        <div class="row">
            <div class="col-lg-4 value-prop">
                <h3>Minimal</h3>
                <p><strong>Linux kernel + systemd.</strong> That's about it. CoreOS has just enough bits to run containers, but does not ship a package manager itself. In fact, the root partition is completely read-only, to guarantee consistency and make updates reliable.</p>
            </div>
            <!--/col-lg-4-->
            <div class="col-lg-4 value-prop">
                <h3>Docker compatible</h3>
                <p><strong>Built for running containers.</strong> Use docker as a package manager to build and push your app. The primitive of an application is a container, not a one-off package. Build containers using docker, by hand, or however you see fit!</p>
            </div>
            <!--/col-lg-4-->
            <div class="col-lg-4 value-prop">
                <h3>Service discovery</h3>
                <p><strong>Clustered by default.</strong> Built in service discovery and configuration sharing using the Raft distributed consensus algorithm. CoreOS is made for companies building platforms.</p>
            </div>
            <!--/col-lg-4-->
        </div>
        <!--/.row-->
    </div>
    <!--/.container-->

</asp:Content>
