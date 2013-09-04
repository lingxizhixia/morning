<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Dawn.Web.list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
       
    </style>


    <title>爱玛电动车价格表,爱玛电动车报价,爱玛电动车图片,爱玛电动车怎么样/质量如何 - 全球电动车网</title>
    <meta name="keywords" content="爱玛电动车,爱玛电动车图片,爱玛电动车怎么样" />
    <meta name="description" content="爱玛电动车图片,爱玛电动车怎么样/质量如何；全球电动车网为消费者提供精准的爱玛电动车,挑选适合您的爱玛电动车" />
    <link href="css/bike/list.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/bike/jquery.kinslideshow-1.2.1.min.js" type="text/javascript" defer="defer"></script>
    <%--    <script type="text/javascript" src="../cbjs.baidu.com/js/m.js"></script>--%>
    <script type="text/javascript">
        $(function () {
            $("#KinSlideshow").KinSlideshow();
        })
    </script>
    <script type="text/javascript">
        function toPage() {
            var page = document.getElementById("toPage").value;
            var toPageLink = document.getElementById("toLink").value;
            if (page != null && page != '') {
                if (!isNaN(page)) {
                    var link = toPageLink + '&pn=' + page;
                    window.location = encodeURI(link);
                } else {
                    alert('您输入的页码只能是数字!');
                    return false;
                }
            } else {
                alert("页码不能为空!");
            }
        }
        /* 产品搜索 */
        function toSearch() {
            var toPageLink = document.getElementById("urlLink").value;
            var proName = document.getElementById("proName").value;
            var link = toPageLink + '&proName=' + proName;
            window.location = encodeURI(link);
        }
        function fun_clean() {
            var proName = document.getElementById("proName").value;
            if ('请输入产品名称' == proName) {
                document.getElementById("proName").value = '';
            }
        }
        function fun_add() {
            var proName = document.getElementById("proName").value;
            if (proName == null || proName == '') {
                document.getElementById("proName").value = '请输入产品名称';
            }
        }
        /* 右下角广告关闭 */
        function closeBanner() {
            if (document.getElementById("swf")) {
                swf.outerHTML = "";
            }
            document.getElementById("tend-toolbar-bottom").style.display = 'none';
        }
        /* 条件链接优化 */
        function forProSeries(seriesId) {
            var proBrandId = document.getElementById("proBrandId").value;
            var toTheUrl = "proindex.domethodindex";
            if (proBrandId != null && proBrandId != "") {
                toTheUrl = toTheUrl + "&pb=" + proBrandId;
            }
            if (seriesId != -1) {
                toTheUrl = toTheUrl + "&ps=" + seriesId;
            }
            window.location = encodeURI(toTheUrl);
        }
        function forProClass(classId) {
            var proBrandId = document.getElementById("proBrandId").value;
            var toTheUrl = "proindex.domethodindex";
            if (proBrandId != null && proBrandId != "") {
                toTheUrl = toTheUrl + "&pb=" + proBrandId;
            }
            if (classId != -1) {
                toTheUrl = toTheUrl + "&pc=" + classId;
            }
            window.location = encodeURI(toTheUrl);
        }
        function forProPrice(priceCell) {
            var proBrandId = document.getElementById("proBrandId").value;
            var toTheUrl = "proindex.domethodindex";
            if (proBrandId != null && proBrandId != "") {
                toTheUrl = toTheUrl + "&pb=" + proBrandId;
            }
            if (priceCell != -1) {
                toTheUrl = toTheUrl + "&pr=" + priceCell;
            }
            window.location = encodeURI(toTheUrl);
        }
        function fun_addProPri(id) {
            var proId = id;
            if (proId != null && proId != "") {
                window.open('propriaction.domethodgetjxspriceid.htm' + proId, null, null);
            }
        }
    </script>

</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="home.aspx">Home</a>
            </li>
            <li class="active">
                <a href="list.aspx">Product</a>
            </li>
            <li>
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="masthead hexagons" style="height: 150px">
        <div class="container">
            <div class="portflio_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content"></div>
        </div>
    </div>

    <%--********************************************************************************************--%>

    <!-- 分页用 -->
    <input type="hidden" name="toLink" id="toLink" value="http://www.qqddc.com/proIndex.do?method=index&thin=0&pb=167" />
    <!-- 搜索用 -->
    <input type="hidden" name="urlLink" id="urlLink" value="/proIndex.do?method=index" />
    <!-- 收录链接用 -->
    <input type="hidden" name="proBrandId" id="proBrandId" value="167" />
    <input type="hidden" name="proSeriesId" id="proSeriesId" value="" />
    <input type="hidden" name="proClassId" id="proClassId" value="" />
    <input type="hidden" name="proPriceStr" id="proPriceStr" value="" />
    <div class="wrap">

        <div class="wrap-box">
            <!-- 需要固定开始 -->
            <div class="wrap-left">



                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

                <script type="text/javascript" src="js/jquery-1.4.2.js"></script>

                <link href="/css/bike/cp-css.css" rel="stylesheet" type="text/css" />



                <!-- 需要固定开始 -->

                <div class="lefttree">

                    <div class="tree">

                        <div class="tree-title" id="a"><a name="" id="A1"></a>Product List</div>

                        <div class="left-brand">


                            <div id="main" class="ct-main"><a href="/bike/bike1.aspx"><span class="span_uncur">KD2610Z-G</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="sub" style="display: none;"></div>

                            <div id="Div1" class="ct-main"><a href="/bike/bike2.aspx"><span class="span_uncur">KDZ-2610Z-P</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div2" style="display: none;"></div>

                            <div id="Div3" class="ct-main"><a href="/bike/bike3.aspx"><span class="span_uncur">KDZ-2609Z-G</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div4" style="display: none;"></div>


                            <div id="Div5" class="ct-main"><a href="/bike/bike4.aspx"><span class="span_uncur">KD2609Z-P</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div6" style="display: none;"></div>

                            <div id="Div7" class="ct-main"><a href="/bike/bike5.aspx"><span class="span_uncur">KD7004Z</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div8" style="display: none;"></div>

                            <div id="Div9" class="ct-main"><a href="/bike/bike6.aspx"><span class="span_uncur">KD7001Z</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div10" style="display: none;"></div>

                            <div id="Div11" class="ct-main"><a href="/bike/bike7.aspx"><span class="span_uncur">KD2603Z</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div12" style="display: none;"></div>

                            <div id="Div13" class="ct-main"><a href="/bike/bike8.aspx"><span class="span_uncur">KD2608Z</span>&nbsp;<span class="span_num"></span></a></div>
                            <div class="ct-sub" id="Div14" style="display: none;"></div>

                        </div>


                    </div>

                </div>

                <!-- 需要固定结束 -->

            </div>
            <!-- 需要固定结束 -->

            <div class="wrap-right">

                <!--内容-->
                <div class="page-right-box">
                    <div class="right-select-title">

                        <span>Product List</span>


                        <%-- <div class="s-btn">
                            <div class="t"></div>
                            <div class="close" style="display: none;">
                                <a href="#">
                                    <img src="homesite/pro/images/colse_11.gif" width="13" height="13" /></a>
                            </div>
                        </div>--%>




                        <div class="top-page">
                            Current Page:<font color="#e60039">1</font>/ 1 &nbsp;
								
								
								<a href="#">Next</a>&nbsp;
								<a href="#">Last</a>&nbsp;
                        </div>
                    </div>
                    <div class="product-list">
                        <ul>


                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike1.aspx" target="_blank">
                                        <img src="images/bike/2002.JPG" width="118" height="106" alt="KD2610Z-G  FOB：459 Euro" title="KD2610Z-G  FOB：459 Euro" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike1.aspx" target="_blank" style="color: blue;">KD2610Z-G  FOB：459 Euro</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD2610Z-G</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;"></font>
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB：459 Euro</td>
                                            <td height="30">Battery：36V 15Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike1.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>

                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike2.aspx" target="_blank">
                                        <img src="images/bike/bike8.JPG" width="118" height="106" alt="KDZ-2610Z-P  FOB：422 EURO" title="KDZ-2610Z-P  FOB：422 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike2.aspx" target="_blank" style="color: blue;">KDZ-2610Z-P  FOB：422 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KDZ-2610Z-P</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB：422 EURO</td>
                                            <td height="30">Battery：36V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike2.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>

                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike3.aspx" target="_blank">
                                        <img src="images/bike/DSC02357.JPG" width="118" height="106" alt="KDZ-2609Z-G  FOB:469 EURO" title="KDZ-2609Z-G  FOB:469 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike3.aspx" target="_blank" style="color: blue;">KDZ-2609Z-G  FOB:469 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KDZ-2609Z-G</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:469 EURO</td>
                                            <td height="30">Battery：36V 15Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike3.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>


                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike4.aspx" target="_blank">
                                        <img src="images/bike/DSC02398.JPG" width="118" height="106" alt="KD2609Z-P  FOB:432 EURO" title="KD2609Z-P  FOB:432 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike4.aspx" target="_blank" style="color: blue;">KD2609Z-P  FOB:432 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD2609Z-P</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:432 EURO</td>
                                            <td height="30">Battery：36V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike4.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>



                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike5.aspx" target="_blank">
                                        <img src="images/bike/DSC02441.JPG" width="118" height="106" alt="KD7004Z  FOB:498 EURO" title="KD7004Z  FOB:498 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike5.aspx" target="_blank" style="color: blue;">KD7004Z  FOB:498 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD7004Z</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:498 EURO</td>
                                            <td height="30">Battery：36V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike5.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>


                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike6.aspx" target="_blank">
                                        <img src="images/bike/DSC02455.JPG" width="118" height="106" alt="KD7001Z  FOB:455 EURO" title="KD7001Z  FOB:455 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike6.aspx" target="_blank" style="color: blue;">KD7001Z  FOB:455 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD7001Z</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:455 EURO</td>
                                            <td height="30">Battery：36V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike6.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>


                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike7.aspx" target="_blank">
                                        <img src="images/bike/IMG_0445.JPG" width="118" height="106" alt="KD2603Z  FOB:340 EURO" title="KD2603Z  FOB:340 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike7.aspx" target="_blank" style="color: blue;">KD2603Z  FOB:340 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD2603Z</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:340 EURO</td>
                                            <td height="30">Battery：24V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike7.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>


                            <li style="height: auto">
                                <div class="pro-img">
                                    <a href="/bike/bike8.aspx" target="_blank">
                                        <img src="images/bike/IMG_0448.JPG" width="118" height="106" alt="KD2608Z  FOB:355 EURO" title="KD2608Z  FOB:355 EURO" /></a>
                                </div>
                                <div class="pro-info">
                                    <table width="560" height="46" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="30" colspan="3">
                                                <span><a href="/bike/bike8.aspx" target="_blank" style="color: blue;">KD2608Z  FOB:355 EURO</a></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="191" height="30">Brand：<font style="color: #e60039; font-size: 14px; font-weight: bold;">KD2608Z</font></td>
                                            <td width="189">Price：<font style="color: #e60039; font-size: 14px; font-weight: bold;">
                                            </td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="jxs.domethodlistpb167" target="_blank">
                                                    <img src="homesite/pro/images/btn_baojia.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30">Series：FOB:355 EURO</td>
                                            <td height="30">Battery：24V 10Ah</td>
                                            <td align="right" valign="middle">
                                                <%-- <a href="javascript:void(0);" onclick="fun_addProPri('8552')">
                                                    <img src="homesite/pro/images/bj.jpg" width="79" height="22" /></a>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"></td>
                                            <td height="30"></td>
                                            <td align="right" valign="middle">
                                                <span>
                                                    <a href="/bike/bike8.aspx" style="color: #0094de">Detail >></a>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </li>




                        </ul>
                    </div>
                    <div class="page">
                        <span>Current Page:<font color="#e60039">1</font>/ 1 </span>
                        <div class="p-r">

                            <a href="#">Next</a>
                            <a href="#">Last</a>
                        </div>
                    </div>
                </div>

            </div>

            <div style="clear: both"></div>
        </div>

    </div>
    <!--Footer Start-->

    <script src="homesite/index2012/js/googleanalytics.js" type="text/javascript"></script>
    <style type="text/css">
        body {
            background-color: white;
        }

        .footer {
            width: 970px;
            margin: 0 auto;
            color: #333;
            font-size: 12px;
            line-height: 28px;
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: center;
            clear: both;
        }

            .footer a {
                color: #333;
            }
    </style>


    <!--Footer end-->


    <%--
    <!-- 右下角广告 END -->


    <!--百度分享 Baidu Button BEGIN -->
    <script type="text/javascript" id="bdshare_js" data="type=slide&img=0&pos=left"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        var bds_config = { "bdTop": 100 };
        document.getElementById("bdshell_js").src = "../bdimg.share.baidu.com/static/js/shell_v2.jscdnversion.js" + new Date().getHours();
    </script>
    <!-- Baidu Button END -->

    <script type="text/javascript" src="homesite/pro/js/compare.js"></script>
    <script type="text/javascript" language="javascript">
        addToCompare("", "");
    </script>
    <script type="text/javascript">
        showNameForCompare();
        window.setInterval("heartBeat()", 10);
    </script>
    <!-- 车型对比  end -->--%>
</asp:Content>
