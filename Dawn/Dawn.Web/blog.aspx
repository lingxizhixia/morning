<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="Dawn.Web.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="banner_band_other">
	<div class="container">
		<div class="blog_text"></div>
		<div class="search">
		<form id="Search" name="Search" method="post" action="#">
		<input name="textfield" type="text" class="search_input" id="textfield" value="Search" onclick="if (this.value == 'Search') this.value = ''; this.focus();" onblur="if(this.value=='')this.value='Search';">
		<div class="search-go"><a href="#"><img src="images/search_btn.jpg" border="0"></a></div>
		</form>
		</div>
		<div class="banner_content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo.</div>
	</div>
</div>

    <div class="blog_middle_content">
<div class="container">

<!-------------------------------------------------------- left box start -------------------------------------------------------->

<div class="other_left_box">	
<div>
		
		<div class="blog_img_frame"><img src="http://toronto-gogh.110mb.com/images/blog_images/001.jpg"></div>
		<div class="blog_left_box"><div class="content_header">There are many variations of passages.</div>	
		<div class="blog_post_date"><a href="#" class="blue_link">Admin</a> on Jan 5th 2010  |  <a href="#" class="blue_link">1 comment</a></div>	 		
		<div class="clear"></div> 
		<div class="content" style="padding-top:10px; ">Morbi semper posuere nisl id consectetur. Donec sodales, leo a ullamcorper blandit, dolor sem tincidunt odio, sed pretium sapien tellus vitae magna. Nullam commodo est vel urna vehicula aliquam aliquet est fermentum. Integer hendrerit quam sed turpis aliquet eleifend.</div>
		<div style="padding-top:10px; "><a href="#" class="pagination">Read more</a></div>
		</div>
		<div class="horizontal_divider_4"></div>
</div>
</div>




<div class="other_left_box" style="top:300px; ">	
<div>
		
		<div class="blog_img_frame"><img src="http://toronto-gogh.110mb.com/images/blog_images/002.jpg"></div>
		<div class="blog_left_box"><div class="content_header">There are many variations of passages.</div>	
		<div class="blog_post_date"><a href="#" class="blue_link">Admin</a> on Jan 5th 2010  |  <a href="#" class="blue_link">1 comment</a></div>	 		
		<div class="clear"></div> 
		<div class="content" style="padding-top:10px; ">Morbi semper posuere nisl id consectetur. Donec sodales, leo a ullamcorper blandit, dolor sem tincidunt odio, sed pretium sapien tellus vitae magna. Nullam commodo est vel urna vehicula aliquam aliquet est fermentum. Integer hendrerit quam sed turpis aliquet eleifend.</div>
		<div style="padding-top:10px; "><a href="#" class="pagination">Read more</a></div>
		</div>
		<div class="horizontal_divider_4"></div>
</div>
</div>




<div class="other_left_box" style="top:570px; ">	
<div>
		
		<div class="blog_img_frame"><img src="http://toronto-gogh.110mb.com/images/blog_images/003.jpg"></div>
		<div class="blog_left_box"><div class="content_header">There are many variations of passages.</div>	
		<div class="blog_post_date"><a href="#" class="blue_link">Admin</a> on Jan 5th 2010  |  <a href="#" class="blue_link">1 comment</a></div>	 		
		<div class="clear"></div> 
		<div class="content" style="padding-top:10px; ">Morbi semper posuere nisl id consectetur. Donec sodales, leo a ullamcorper blandit, dolor sem tincidunt odio, sed pretium sapien tellus vitae magna. Nullam commodo est vel urna vehicula aliquam aliquet est fermentum. Integer hendrerit quam sed turpis aliquet eleifend.</div>
		<div style="padding-top:10px; "><a href="#" class="pagination">Read more</a></div>
		</div>
		<div class="horizontal_divider_4"></div>
</div>
</div>




<div class="other_left_box" style="top:840px; ">	
<div>
		
		<div class="blog_img_frame"><img src="http://toronto-gogh.110mb.com/images/blog_images/004.jpg"></div>
		<div class="blog_left_box"><div class="content_header">There are many variations of passages.</div>	
		<div class="blog_post_date"><a href="#" class="blue_link">Admin</a> on Jan 5th 2010  |  <a href="#" class="blue_link">1 comment</a></div>	 		
		<div class="clear"></div> 
		<div class="content" style="padding-top:10px; ">Morbi semper posuere nisl id consectetur. Donec sodales, leo a ullamcorper blandit, dolor sem tincidunt odio, sed pretium sapien tellus vitae magna. Nullam commodo est vel urna vehicula aliquam aliquet est fermentum. Integer hendrerit quam sed turpis aliquet eleifend.</div>
		<div style="padding-top:10px; "><a href="#" class="pagination">Read more</a></div>
		</div>
		<div class="horizontal_divider_4"></div>
</div>
</div>

<!-------------------------------------------------------- left box end -------------------------------------------------------->



<!-------------------------------------------------------- right box start -------------------------------------------------------->
<!-------------------------------------------------------- right box 1 start -------------------------------------------------------->

	<div class="other_right_box1">
		<div class="content_header">Categories</div>
		<div><a href="#" class="right_band_links">Article</a></div>
		<div><a href="#" class="right_band_links">Fun</a></div>
		<div><a href="#" class="right_band_links">News</a></div>
		<div><a href="#" class="right_band_links">Product</a></div>
	</div>
<!-------------------------------------------------------- right box 1 end -------------------------------------------------------->	
<!-------------------------------------------------------- right box 2 start -------------------------------------------------------->

	<div class="other_right_box5">
		<div class="content_header">Archive</div>
		<div><a href="#" class="right_band_links">April</a></div>
		<div><a href="#" class="right_band_links">March</a></div>
		<div><a href="#" class="right_band_links">February</a></div>
		<div><a href="#" class="right_band_links">January</a></div>
	</div>
<!-------------------------------------------------------- right box 2 end -------------------------------------------------------->	


<!-------------------------------------------------------- right box end -------------------------------------------------------->
	<div class="vertical_divider_6"></div>
</div>
</div>


</asp:Content>
