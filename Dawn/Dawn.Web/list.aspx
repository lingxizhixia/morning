<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Dawn.Web.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="banner_band_other">
	<div class="container">
		<div class="portflio_text"></div>
		<div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
		<div class="banner_content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo.</div>
	</div>
</div>

    <div class="portfolio_middle_content">
<div class="container">

<!-------------------------------------------------------- content header part start -------------------------------------------------------->

	<div class="other_left_box">
		<div class="content_header">Our Products</div>
		<div class="horizontal_divider_3"></div>
  </div>
  
<!-------------------------------------------------------- categories navigation start -------------------------------------------------------->

<div class="categories_holder">
		<a href="#" class="pagination">All</a>
		<a href="#" class="pagination">Web Design</a>
		<a href="#" class="pagination">Logo Design</a>
		<a href="#" class="pagination">3D Modeling</a>
		<a href="#" class="pagination">Video</a>
</div>

<!-------------------------------------------------------- categories navigation end -------------------------------------------------------->
<!-------------------------------------------------------- content header part end -------------------------------------------------------->
<!-------------------------------------------------------- left box start -------------------------------------------------------->

	<div class="left_box_container3">
		<div class="portfolio_img_frame">
		<a href="detail.aspx" class="lightbox"><img src="images/products/bike1.png" width="258" height="169" border="0" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_02.jpg" class="lightbox"><img src="images/products/bike2.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_03.jpg" class="lightbox"><img src="images/products/bike3.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
</div>
	
<!-------------------------------------------------------- left box end -------------------------------------------------------->
<!-------------------------------------------------------- middle box start -------------------------------------------------------->

	<div class="middle_box_container3">
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_04.jpg" class="lightbox"><img src="images/products/bike4.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_05.jpg" class="lightbox"><img src="images/products/bike5.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_06.jpg" class="lightbox"><img src="images/products/bike6.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>	
		
    </div>

<!-------------------------------------------------------- middle box end -------------------------------------------------------->
<!-------------------------------------------------------- right box start -------------------------------------------------------->

	<div class="right_box_container3">
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_07.jpg" class="lightbox"><img src="images/products/bike7.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_08.jpg" class="lightbox"><img src="images/products/bike8.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>
		
		
		<%--<div class="portfolio_img_frame">
		<a href="images/big_portfolio/work_09.jpg" class="lightbox"><img src="images/products/bike1.png" width="258" height="169" border="0"/></a></div>
	    <div class="portfolio_img_description"><span class="header_1">Purus nulla euismod tellus</span><br>Mauris ultrices dignissim tellus sed posuere augue euismod eget morbi semper.</div>--%>
    </div>
	
<!-------------------------------------------------------- right box end -------------------------------------------------------->
<!-------------------------------------------------------- pagination start -------------------------------------------------------->
<%--<div class="pagination_holder">
		<a href="#" class="pagination">1</a>
		<a href="#" class="pagination">2</a>
		<a href="#" class="pagination">3</a>
		<a href="#" class="pagination">4</a>
		<a href="#" class="pagination">Next</a>
</div>--%>
<!-------------------------------------------------------- pagination end -------------------------------------------------------->


</div>
</div>


</asp:Content>
