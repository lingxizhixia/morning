<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Dawn.Web.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" type="text/css" href="/3DGallery/css/demo.css" />
</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

   <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="/home.aspx">Home</a>
            </li>
            <li>
                <a href="/list.aspx">Product</a>
            </li>
            <li class="active">
                <a href="/contact.aspx">Contact</a>
            </li>
        </ul>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="masthead hexagons" style="height: 50px;padding:0px;">
        <div class="container">
            <div class="other_banner_header"></div>
            <div class="banner_content"></div>
        </div>
    </div>

    <div class="contact_middle_content" style="height:550px; margin:50px;">
        <div class="container">

            	<header>
				<h1>Name <span>: Joanna</span></h1>
				<h1>Email <span>: jadeou99@gmail.com</span></h1>
                    <h1>Telephone <span>: +86 15666558312</span></h1>
                    <br />
                     <div class="map_img">
                            <img src="images/address.png" width="280" height="204" alt=""/></div>
			</header>

            <!-------------------------------------------------------- left box start -------------------------------------------------------->

         <%--   <div class="other_left_box" style="text-align:center;width:100%;">
                <div class="other_left_box3" style="top:0; text-align:center;width:100%;">
                    <div class="contact_list" style="text-align:left;margin-left: 25%">

                            <header>
                           <h1>Name </h1> ： Joanna
                                </header>

         
                        <p>
                        <p>
                            Email：jadeou99@gmail.com</p>
                        <p>
                            Telephone：+86 15666558312</p>
                        <p>
                            FAX：(020) 89231279</p>
                        <div class="map_img">
                            <img src="images/address.png" width="280" height="193" alt=""/></div>
                    </div>

                </div>



                <!-------------------------------------------------------- left box end -------------------------------------------------------->
            </div>--%>



            <!-------------------------------------------------------- right box start -------------------------------------------------------->


            <div class="other_right_box4" style="display:none">
                <div class="content_header">Details</div>
                <div class="content">
                    <span class="header_1">Toronto Design Inc.</span>
                    <br>
                    Phone: 135-8031-3381<br>
                    Email: <a href="#" class="blue_link">1147936481@qq.com</a><br>
                    Address: Kolkata-700101, West Bengal, India
                </div>

            </div>
            <div class="other_right_box3" style="display:none">
                <div>
                    <img src="images/vcard_icon.png">
                </div>

                <div class="download_link_position"><a href="#" class="blue_link_large">Download Vcard</a></div>
                <div class="map_img_frame">
                    <img src="images/address.png" width="261px" height="204px" alt="Guangzhou City, Guangdong Province, China">
                </div>
            </div>


            <div class="vertical_divider_7" style="display:none"></div>
        </div>
    </div>



    <script type="text/javascript">
        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script src="http://www.google-analytics.com/ga.js" type="text/javascript"></script>
    <script type="text/javascript">
        try {
            var pageTracker = _gat._getTracker("UA-1497692-16");
            pageTracker._trackPageview();
        } catch (err) { }</script>

</asp:Content>
