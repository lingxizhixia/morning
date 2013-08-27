<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Dawn.Web.contact" %>

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
            <li>
                <a href="about.aspx">About</a>
            </li>
            <li class="active">
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="masthead hexagons" style="height: 150px">
        <%--banner_band_other--%>
        <div class="container">
            <div class="contact_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content"></div>
        </div>
    </div>

    <div class="contact_middle_content" style="height:550px;">
        <div class="container">

            <!-------------------------------------------------------- left box start -------------------------------------------------------->

            <div class="other_left_box">
                <div class="content_header">Send Us Your Enquiry</div>
                <div class="content">
                   Dere frends,if you want to know more information about our products, you could give us your truly contact information. As below form, you could fill the blank place with the suggestion nearly. We will contact you as soon as quickly. 
<font style="color:red">Rejoice alway......</font>
                </div>

                <div class="other_left_box3" style="top:0; margin-top:150px;">

                    <%--<form name="contact" method="POST" action="sendmail.php">--%>
                        <div width="456" border="0" cellpadding="0" cellspacing="0">
                            <div>
                                <div height="28" valign="top" class="contact_subject">
                                    <span class="header_1">Name</span><br>
                                    Add your name
                                </div>
                                <div>
                                    <input name="name" type="text" class="text_field">
                                </div>
                            </div>
                            <div style="padding-top: 30px;">
                                <div height="28" valign="top" class="contact_subject">
                                    <span class="header_1">Email</span><br>
                                    Add a valid address
                                </div>
                                <div>
                                    <input name="email" type="text" class="text_field">
                                </div>
                            </div>
                            <div style="padding-top: 30px;">
                                <div height="28" valign="top" class="contact_subject">
                                    <span class="header_1">Telephone</span><br>
                                    Add a valid Telephone
                                </div>
                                <div>
                                    <input name="telephone" type="text" class="text_field">
                                </div>
                            </div>
                            <div style="padding-top: 30px;">
                                <div height="28" valign="top" class="contact_subject">
                                    <span class="header_1">Message</span><br>
                                    Communicate with us
                                </div>
                                <div>
                                    <textarea name="message" class="text_area"></textarea>
                                </div>
                            </div>
                            <div style="padding-left: 158px; padding-top: 30px;">
                                <div valign="top" align="left">
                                    <%--<input name="submit" type="image" src="images/send_btn.jpg" value="Submit"/>--%>
                                    <a href="#" onclick="alert('Success');"><img src="images/send_btn.jpg" alt="Submit"/></a>
                                </div>
                            </div>


                        </div>
                   <%-- </form>--%>



                </div>



                <!-------------------------------------------------------- left box end -------------------------------------------------------->
            </div>



            <!-------------------------------------------------------- right box start -------------------------------------------------------->


            <div class="other_right_box4">
                <div class="content_header">Details</div>
                <div class="content">
                    <span class="header_1">Toronto Design Inc.</span>
                    <br>
                    Phone: 135-8031-3381<br>
                    Email: <a href="#" class="blue_link">1147936481@qq.com</a><br>
                    Address: Kolkata-700101, West Bengal, India
                </div>

            </div>
            <div class="other_right_box3">
                <div>
                    <img src="images/vcard_icon.png">
                </div>

                <div class="download_link_position"><a href="#" class="blue_link_large">Download Vcard</a></div>
                <div class="map_img_frame">
                    <img src="images/address.png" width="261px" height="204px" alt="Guangzhou City, Guangdong Province, China">
                </div>
            </div>


            <div class="vertical_divider_7"></div>
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
