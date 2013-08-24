<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Dawn.Web.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="home.aspx">Home</a>
            </li>
             <li>
                <a href="home.aspx">Service</a>
            </li>
            <li>
                <a href="document.aspx">Documentation</a>
            </li>
          <%--  <li>
                <a href="http://coreos.com/blog/">Blog</a>
            </li>--%>
            <li class="active">
                <a href="about.aspx">About</a>
            </li>
            <li>
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="masthead hexagons" style="height: 180px">
        <div class="container">
            <div class="about_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo.</div>
        </div>
    </div>



    <div class="about_middle_content">
        <div class="container">

            <!-------------------------------------------------------- left box start -------------------------------------------------------->

            <div class="other_left_box">
                <div class="content_header">Our History</div>
                <div class="content">
                    <span class="header_1">Mauris ultrices dignissim tellus, sed posuere augue euismod eget. </span>
                    <br>
                    Morbi semper posuere nisl id consectetur. Donec sodales, leo a ullamcorper blandit, dolor sem tincidunt odio, sed pretium sapien tellus vitae magna. Nullam commodo est vel urna vehicula aliquam aliquet est fermentum. Integer hendrerit quam sed turpis aliquet eleifend.
                </div>
                <div class="about_img_frame">
                    <img src="images/img_01.jpg"></div>
                <div class="content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo. Sed laoreet, mi quis lobortis mattis, purus nulla euismod tellus eu ullamcorper nisi mi vitae nulla. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo mattis.</div>
                <div class="content">Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo. Sed laoreet, mi quis lobortis mattis, purus nulla euismod tellus eu ullamcorper nisi mi vitae nulla. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo mattis.</div>
                <br>
                <div class="content">
                    <span class="header_1">Fusce mauris felis, imperdiet sed sollicitudin non</span><br>
                    Donec rutrum ligula eu lorem egestas sed ornare magna bibendum. Praesent vel congue lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum, turpis sit amet suscipit egestas, odio eros porttitor sapien, eget imperdiet sem tortor id ante. Fusce volutpat varius orci et sagittis. Mauris non arcu lacus. Integer porttitor hendrerit feugiat. Nullam lobortis pretium nulla eleifend pretium. Phasellus vel dictum est. Curabitur est dolor, tincidunt ac suscipit id, sollicitudin id purus. Proin condimentum lacus non libero condimentum et cursus mauris porta. Sed ut lacus nec augue consequat facilisis id a justo. Aliquam et tortor sodales erat feugiat rutrum in accumsan velit. Maecenas dolor nulla, scelerisque eget dignissim ac, sagittis accumsan diam. Proin sit amet facilisis tellus. Praesent diam enim, consequat eget varius sed, malesuada sit amet augue. Proin justo quam, porttitor in sollicitudin a, auctor id orci. Donec eros felis, accumsan ac interdum eu, tempor sed quam. 
                </div>
            </div>

            <!-------------------------------------------------------- left box end -------------------------------------------------------->

            <!-------------------------------------------------------- right box start -------------------------------------------------------->
            <!-------------------------------------------------------- right box 1 start -------------------------------------------------------->

            <div class="other_right_box1">
                <div class="content_header">About Us</div>
                <div><a href="#" class="right_band_links" style="background-color:transparent; padding-top:2px;">Company History</a></div>
                <div><a href="people.htm" class="right_band_links" style="background-color:transparent;padding-top:2px;">Our People</a></div>
                <div><a href="#" class="right_band_links" style="background-color:transparent;padding-top:2px;">Vision, Mission and Goal</a></div>
            </div>
            <!-------------------------------------------------------- right box 1 end -------------------------------------------------------->
            <!-------------------------------------------------------- right box 2 start -------------------------------------------------------->

            <div class="other_right_box2">
                <div class="content_header">Testimonials</div>
                <div class="testimonials_2">Duis eget nisl sit amet eros sagittis mattis vitae quis nibh donec rutrum eleifend orci at condimentum dui pulvinar quis eros.</div>
                <div class="content" style="padding-top: 10px;">John Doe
                    <br>
                    Creative Head  |  <a href="#" class="blue_link">Congo Interactive</a></div>
                <div class="horizontal_divider_2"></div>
                <div class="testimonials_2">Duis eget nisl sit amet eros sagittis mattis vitae quis nibh donec rutrum eleifend orci at condimentum dui pulvinar quis eros.</div>
                <div class="content" style="padding-top: 10px;">John Doe
                    <br>
                    Creative Head  |  <a href="#" class="blue_link">Congo Interactive</a></div>
                <div class="horizontal_divider_2"></div>
            </div>
            <!-------------------------------------------------------- right box 2 end -------------------------------------------------------->
            <!-------------------------------------------------------- right box end -------------------------------------------------------->
            <div class="vertical_divider_3"></div>
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
