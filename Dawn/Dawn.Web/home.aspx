<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Dawn.Web.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>3D Gallery with CSS3 and jQuery</title>
    <meta name="author" content="Codrops" />
    <link rel="stylesheet" type="text/css" href="/3DGallery/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="/3DGallery/css/style.css" />
    <script type="text/javascript" src="/3DGallery/js/modernizr.custom.53451.js"></script>
</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="home.aspx">Home</a>
            </li>
            <li>
                <a href="list.aspx">Product</a>
            </li>
            <li>
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="dg-container" class="dg-container" style="margin:120px;">
        <div class="dg-wrapper">
            <a href="/bike/bike1.aspx" target="_blank">
                <img src="/images/bike/2002.JPG" alt="image01" width="480" height="260"/><div>KD2610Z-G </div>
            </a>
            <a href="/bike/bike2.aspx" target="_blank">
                <img src="/images/bike/DSC02357.JPG" alt="image02" width="480" height="260"/><div>KDZ-2610Z-P </div>
            </a>
            <a href="/bike/bike3.aspx" target="_blank">
                <img src="/images/bike/DSC02398.JPG" alt="image03" width="480" height="260"/><div>KDZ-2609Z-G </div>
            </a>
            <a href="/bike/bike4.aspx" target="_blank">
                <img src="/images/bike/DSC02441.JPG" alt="image04" width="480" height="260"/><div>KD2609Z-P </div>
            </a>
            <a href="/bike/bike5.aspx" target="_blank">
                <img src="/images/bike/DSC02455.JPG" alt="image05" width="480" height="260"/><div>KD7004Z </div>
            </a>
            <a href="/bike/bike6.aspx" target="_blank">
                <img src="/images/bike/IMG_0445.JPG" alt="image06" width="480" height="260"/><div>KD7001Z</div>
            </a>
            <a href="/bike/bike7.aspx" target="_blank">
                <img src="/images/bike/IMG_0448.JPG" alt="image07" width="480" height="260"/><div>KD2603Z</div>
            </a>
            <a href="/bike/bike8.aspx" target="_blank">
                <img src="/images/bike/2002.JPG" alt="image08" width="480" height="260"/><div>KD2608Z</div>
            </a>
        </div>
     	<nav>	
					<span class="dg-prev">&lt;</span>
					<span class="dg-next">&gt;</span>
				</nav>
    </section>

    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/3DGallery/js/jquery.gallery.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#dg-container').gallery({
                autoplay: true
            });
        });
		    </script>

</asp:Content>
