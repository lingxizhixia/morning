<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Dawn.Web.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>晨光贸易</title>
    <meta name="keywords" content="可胜、可胜价格、可胜图片、爱玛电动车官方网、可胜报价表" />
    <meta name="description" content="爱玛电动车，加盟代理爱玛电动车，全球电动车网为代理商、消费者提供精准的可胜官方网报价表，挑选适合您的电动车" />
    <link href="css/bike/prodetail.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/bike/popup/artdialog.source.jsskindefault.js"></script>
    <script type="text/javascript" src="js/bike/popup/_doc/demo.js"></script>
    <script type="text/javascript" src="js/bike/popup/plugins/iframetools.source.js"></script>
    <script type="text/javascript" src="js/bike/popup/_doc/highlight/highlight.pack.js"></script>
    <script type="text/javascript" src="js/bike/popup/_doc/highlight/languages/javascript.js"></script>
    <!-- 下面两行死百度广告的JS代码文件：请置于所有广告位代码之前 -->
    <script type="text/javascript" src="js/bike/m.js"></script>
    <script type="text/javascript" language="javascript">
        function SwitchNewsTag(id, num, count) {
            ClearTagClass(id, count);
            document.getElementById("tagname_" + id + num).className = "title-on";
            document.getElementById(id + num).style.display = "";
        }
        function ClearTagClass(id, count) {
            for (i = 1; i <= count; i++) {
                document.getElementById("tagname_" + id + i).className = "title-off";
                document.getElementById(id + i).style.display = "none";
            }
        }
        function chk(str, size, listId) {
            var img = document.getElementById("bigImg");
            if (str != '' && str != null) {
                img.src = 'fileUpload/products/' + str;
            }
            if (size != null && size != '') {
                for (var i = 0; i < size; i++) {
                    var li = document.getElementById("listId" + i);
                    if (listId == i) {
                        li.className = 'select-on';
                    } else {
                        li.className = '';
                    }
                }
            }
        }
        function addPinglun() {
            var content = document.getElementById('content');
            var productsId = document.getElementById("productsBaseId");
            if (content.value == '' || content.length == 0) {
                alert('评论内容不能为空!');
                return false;
            }
            if (content.length > 100) {
                alert('评论内容可在100个汉字范围内!');
                return false;
            }
            return true;
        }
        /*右下角广告关闭*/
        function closeBanner() {
            document.getElementById("ALayer3").style.display = 'none';
        }
        function fun_addProPri(id) {
            var proId = id;
            if (proId != null && proId != "") {
                window.open('propriaction.domethodgetjxspriceid.htm' + proId, null, null);
            }
        }
    </script>

    <link href="css/bike/top120910.css" rel="stylesheet" type="text/css"></link>
    <script language="javascript" src="js/bike/homesite_head_js.js"></script>

</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="home.aspx">Home</a>
            </li>
            <li class="active">
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

    <div class="masthead hexagons" style="height: 150px">
        <div class="container">
            <div class="portflio_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo.</div>
        </div>
    </div>

    <div class="pro-page">
        <div class="wz">
            <span>You Current Site：<a href="home.aspx" target="_self">Home</a> &gt; <a href="list.aspx" target="_self">Product</a> &gt; Detail</span>
        </div>
        <!-- 一号位 -->


        <div class="con-left">

            <div class="box">
                <div class="box-title">
                    <div class="box-name">热卖车型</div>
                </div>
                <div class="left-hot">
                    <ul>


                        <li>
                            <a href="pro.doid6446.htm" target="_blank">
                                <img src="fileupload/products/20120716170531618840474.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6446.htm" target="_blank">爱玛-极速-19</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：3190-3390</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid6408.htm" target="_blank">
                                <img src="fileupload/products/20120713151327755350255.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6408.htm" target="_blank">爱玛-可迈</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：2590-2790</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid6459.htm" target="_blank">
                                <img src="fileupload/products/20120716173926345180279.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6459.htm" target="_blank">爱玛-捷运</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：3070-3360</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid6452.htm" target="_blank">
                                <img src="fileupload/products/20120716172453482620244.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6452.htm" target="_blank">爱玛-魅影/-A/-C</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：3500-3700</div>
                            </div>
                        </li>


                    </ul>
                </div>
            </div>
            <!--left相关车型-->
            <div class="box">
                <div class="box-title">
                    <div class="box-name">相关车型</div>
                </div>
                <div class="left-hot">
                    <ul>


                        <li>
                            <a href="pro.doid6356.htm" target="_blank">
                                <img src="fileupload/products/20120713100641080736385.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6356.htm" target="_blank">爱玛-草莓</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：1970-2170</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid5331.htm" target="_blank">
                                <img src="fileupload/products/20120418155900086522236.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid5331.htm" target="_blank">爱玛-T6</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：1880-2080</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid6448.htm" target="_blank">
                                <img src="fileupload/products/20120716171027330030661.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6448.htm" target="_blank">爱玛-极速10</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：3250-3450</div>
                            </div>
                        </li>

                        <li>
                            <a href="pro.doid6423.htm" target="_blank">
                                <img src="fileupload/products/20120716153940790914666.jpg" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid6423.htm" target="_blank">爱玛-玲珑-T/2号</a></div>
                                <div class="brand">品牌：爱玛电动车</div>
                                <div class="price">报价：3350-3550</div>
                            </div>
                        </li>


                    </ul>
                </div>
            </div>

        </div>

        <div class="con-right">
            <div class="right-box">
                <div class="right-show">
                    <div class="cp-name">爱玛电动车&nbsp;2013新品&nbsp;可胜</div>
                    <div class="cp-pic1">

                        <li style="display: block;">
                            <img src="http://www.qqddc.com/fileUpload/products/20130816135219535083584.jpg" id="bigImg" style="max-width: 500px;" alt="爱玛电动车-2013新品-可胜" /></li>
                    </div>
                    <div class="cp-pic2">
                        <ul>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tx">
                <div class="tx-icon"></div>
                <div class="tx-t">
                    全球电动车网以上报价以各地经销商报价平均价格为准，供消费者参考，因电动车价格受区域、促销活动等不定因素影响，如与你当地电动车价格有出入，请以当地价格为准。
                </div>
            </div>
            <!--详细-->
            <div class="cp-detail">
                <div class="cp-detail-title">
                    <ul>
                        <li onclick="SwitchNewsTag('a',1,4)" id="tagname_a1" title="点击查看详细信息" class="title-on">详细信息</li>

                    </ul>
                </div>
                <div id="a1">
                    <div class="cp-con">
                        <div class="cp-tab">
                            <table width="698" border="1" cellpadding="0" cellspacing="1" style="background: rgb(232, 246, 255);display: table;border-color:rgb(128, 128, 128);border-width:1px;">
                                <tr>
                                    <td height="28" colspan="6" align="center" bgcolor="#e8f6ff">
                                        <strong>爱玛电动车&nbsp;2013新品&nbsp;可胜-详细配置</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span>名称</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">可胜</td>
                                    <td width="78" height="28" bgcolor="#e8f6ff"><span>品牌</span></td>
                                    <td width="161" height="28" bgcolor="#FFFFFF">爱玛电动车</td>
                                    <td width="68" height="28" bgcolor="#e8f6ff"><span>电机</span></td>
                                    <td width="131" height="28" bgcolor="#FFFFFF">无刷永磁直流电机</td>
                                </tr>
                                <tr>
                                    <td height="28" bgcolor="#e8f6ff"><span>价格区间</span></td>
                                    <td height="28" bgcolor="#FFFFFF">
                                        <div class="#e60039"><span style="color: red; font-weight: bold;">2550-2780</span></div>
                                    </td>
                                    <td height="28" bgcolor="#e8f6ff"><span>系列</span></td>
                                    <td height="28" bgcolor="#FFFFFF">2013新品</td>
                                    <td height="28" bgcolor="#e8f6ff"><span>电池</span></td>
                                    <td height="28" bgcolor="#FFFFFF">48V12Ah</td>

                                </tr>
                            </table>
                        </div>

                       <%-- <div class="cp-tab2" style="font-size: 13px;"></div>
                        <div class="cp-title">专卖店报价</div>
                        <div class="cp-tab2">
								
							</div>--%>

                    </div>
                </div>

            </div>

            <div style="height: 20px;"><span style="color: white;">全球电动车网产品库</span></div>
            <script type="text/javascript">/*pro728x90*/ var cpro_id = 'u971200';</script>
            <script src="../cpro.baidu.com/cpro/ui/c.js" type="text/javascript"></script>

        </div>
        <div style="clear: both"></div>
    </div>


    <!-- 右下角广告 BEGIN -->
    <script type="text/javascript">BAIDU_CLB_fillSlot("738834");</script>
    <!-- 右下角广告 END -->


    <!--百度分享 Baidu Button BEGIN -->
    <script type="text/javascript" id="bdshare_js" data="type=slide&img=0&pos=right"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        var bds_config = { "bdTop": 100 };
        document.getElementById("abdshell_js").src = "../bdimg.share.baidu.com/static/js/shell_v2.jscdnversion.js" + new Date().getHours();
    </script>
    <!-- Baidu Button END -->


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

</asp:Content>




<%--http://www.giantcyclingworld.com/web/bikes_view.php?id=10d1b01b-e339-46f1-8002-cae7ad27d841--%>
