<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="bike2.aspx.cs" Inherits="Dawn.Web.bike.bike2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>晨光贸易</title>
    <meta name="keywords" content="可胜、可胜价格、可胜图片、爱玛电动车官方网、可胜报价表" />
    <meta name="description" content="爱玛电动车，加盟代理爱玛电动车，全球电动车网为代理商、消费者提供精准的可胜官方网报价表，挑选适合您的电动车" />
    <link href="/css/bike/prodetail.css" type="text/css" rel="stylesheet" />
    <link href="/css/bike/cp-css.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="/js/bike/popup/artdialog.source.jsskindefault.js"></script>
    <script type="text/javascript" src="/js/bike/popup/_doc/demo.js"></script>
    <script type="text/javascript" src="/js/bike/popup/plugins/iframetools.source.js"></script>
    <script type="text/javascript" src="/js/bike/popup/_doc/highlight/highlight.pack.js"></script>
    <script type="text/javascript" src="/js/bike/popup/_doc/highlight/languages/javascript.js"></script>
    <!-- 下面两行死百度广告的JS代码文件：请置于所有广告位代码之前 -->
    <%--<script type="text/javascript" src="/js/bike/m.js"></script>--%>
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

    <link href="/css/bike/top120910.css" rel="stylesheet" type="text/css"></link>
    <script language="javascript" src="/js/bike/homesite_head_js.js"></script>

</asp:Content>

<asp:Content ID="ContentMenu" runat="server" ContentPlaceHolderID="ContentPlaceHolderMenu">

    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="/home.aspx">Home</a>
            </li>
            <li class="active">
                <a href="/list.aspx">Service</a>
            </li>
            <li>
                <a href="/document.aspx">Documentation</a>
            </li>
            <%--  <li>
                <a href="http://coreos.com/blog/">Blog</a>
            </li>--%>
            <li>
                <a href="/about.aspx">About</a>
            </li>
            <li>
                <a href="/contact.aspx">Contact</a>
            </li>
        </ul>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="masthead hexagons" style="height: 150px">
        <div class="container">
            <div class="portflio_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content">
            </div>
        </div>
    </div>

    <div class="pro-page">
        <div class="wz">
            <span>You Current Site：<a href="/home.aspx" target="_self">Home</a> &gt; <a href="/list.aspx" target="_self">Product</a> &gt; Detail</span>
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
                            <a href="/bike/bike1.aspx" target="_blank">
                                <img src="../images/bike/2002.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike1.aspx" target="_blank">KD2610Z-G</a></div>
                                <div class="brand">品牌：KD2610Z-G</div>
                                <div class="price">报价：3190-3390</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike2.aspx" target="_blank">
                                <img src="../images/bike/bike8.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike2.aspx" target="_blank">KDZ-2610Z-P</a></div>
                                <div class="brand">品牌：KDZ-2610Z-P</div>
                                <div class="price">报价：2590-2790</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike3.aspx" target="_blank">
                                <img src="../images/bike/DSC02357.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike3.aspx" target="_blank">KDZ-2609Z-G</a></div>
                                <div class="brand">品牌：KDZ-2609Z-G</div>
                                <div class="price">报价：3070-3360</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike4.aspx" target="_blank">
                                <img src="../images/bike/DSC02398.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike4.aspx" target="_blank">KD2609Z-P</a></div>
                                <div class="brand">品牌：KD2609Z-P</div>
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
                            <a href="/bike/bike5.aspx" target="_blank">
                                <img src="../images/bike/DSC02441.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike5.aspx" target="_blank">KD7004Z</a></div>
                                <div class="brand">品牌：KD7004Z</div>
                                <div class="price">报价：1970-2170</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike6.aspx" target="_blank">
                                <img src="../images/bike/DSC02455.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="pro.doid5331.htm" target="_blank">KD7001Z</a></div>
                                <div class="brand">品牌：KD7001Z</div>
                                <div class="price">报价：1880-2080</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike7.aspx" target="_blank">
                                <img src="../images/bike/IMG_0445.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike7.aspx" target="_blank">KD2603Z</a></div>
                                <div class="brand">品牌：KD2603Z</div>
                                <div class="price">报价：3250-3450</div>
                            </div>
                        </li>

                        <li>
                            <a href="/bike/bike8.aspx" target="_blank">
                                <img src="../images/bike/IMG_0448.JPG" width="59" height="59" /></a>
                            <div class="left-info">
                                <div class="name"><a href="/bike/bike8.aspx" target="_blank">KD2608Z</a></div>
                                <div class="brand">品牌：KD2608Z</div>
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
                    <div class="cp-name">KD2610Z-G FOB：459 Euro</div>
                    <div class="cp-pic1">

                        <li style="display: block;">
                            <img src="../images/bike/2002.JPG" id="bigImg" style="max-width: 500px;" alt="KD2610Z-G FOB：459 Euro" /></li>
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
                        <li onclick="SwitchNewsTag('a',1,3)" id="tagname_a1" title="Click To See Electric System" class="title-on">Electric System</li>
                        <li onclick="SwitchNewsTag('a',2,3)" id="tagname_a2" title="Click To See Components" class="title-off">Components</li>
                        <li onclick="SwitchNewsTag('a',3,3)" id="tagname_a3" title="Click To See Other Parts" class="title-off">Other Parts</li>
                    </ul>
                </div>
                <div id="a1">
                    <div class="cp-con">
                        <div class="cp-tab">
                            <table width="698" border="1" cellpadding="0" cellspacing="1" style="background: rgb(232, 246, 255); display: table; border-color: #d7d7d7; border-width: 1px;">
                                <tr>
                                    <td height="28" colspan="2" align="center" bgcolor="#e8f6ff">
                                        <strong>KD2610Z-G&nbsp;-Electric System</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Motor</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">180-250W High Speed Brushless Gear motor</td>
                                </tr>
                                <tr>
                                    <td width="78" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Controller</span></td>
                                    <td width="161" height="28" bgcolor="#FFFFFF">
                                        <p>
                                            Pedaling Run/Pedaling-Electric Assist Run     
                                            <br />
                                            Option: Pure Electric Run Model<br />
                                            Overload protection ,Low voltage protection
                                        </p>

                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Battery</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Option:  36V 15Ah Li-ion battery</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Charger</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">
                                        <p>
                                            100-240VAC50-60HZ，1.8A amps smart charger<br />
                                            Charge time 6-8 hours
                                        </p>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Max  Speed</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">≤25Km/h</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Range</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">
                                        <p>
                                            e-bike mode 50-60km<br />
                                            Pedaling-Electric mode 80-100km
                                        </p>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Load capacity</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">9０kg</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Weight</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Li-ion battery4.5 kgs</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">N.W./G.W.</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">27kgs/31.5kgs</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Product Size</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">1500X260X705 mm</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Carton Size</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF"></td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Capability</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">96pcs/20' , 206pcs/40',   216pcs/40' HQ</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>

                <div id="a2" style="display: none;">
                    <div class="cp-con">
                        <div class="cp-tab">
                            <table width="698" border="1" cellpadding="0" cellspacing="1" style="background: rgb(232, 246, 255); display: table; border-color: #d7d7d7; border-width: 1px;">
                                <tr>
                                    <td height="28" colspan="2" align="center" bgcolor="#e8f6ff">
                                        <strong>KD2610Z-G&nbsp;-Components</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Brakes(front)</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Disc</td>
                                </tr>
                                <tr>
                                    <td width="78" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Brakes(Rear)</span></td>
                                    <td width="161" height="28" bgcolor="#FFFFFF">V brakes
                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Gears</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">7-class Shimano</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Front fork</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">
                                        <p>
                                        </p>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Handle bars</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">≤25Km/h</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Range</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">
                                        <p>
                                            e-bike mode 50-60km<br />
                                            Pedaling-Electric mode 80-100km
                                        </p>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Load capacity</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Al Alloy</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Chainguard</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Plastic</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Mudguard</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">ABS</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Chainwheel</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Steel 44 T,Al alloy crank </td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Chain</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Rust resistant chain</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Stander</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Al alloy central stander</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Rear carrier</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Al alloy</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Saddle</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">GEL Cruiser saddle</td>
                                </tr>

                                <tr>
                                    <td width="72" height="28" bgcolor="#e8f6ff"><span style="color: #ff7600; font-weight: bold">Seat Post</span></td>
                                    <td width="181" height="28" bgcolor="#FFFFFF">Al alloy with suspension</td>
                                </tr>

                            </table>
                        </div>

                    </div>
                </div>

                <div id="a3" style="display: none;">
                    <div class="cp-con">
                        <div class="cp-title" style="padding-top: 5px;">Water bottle</div>
                        <div class="cp-tab">
                            <div class="pic-model">
                                <ul>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/frame1.png" width="140" height="210" alt="Blue Water bottle" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/frame2.png" width="140" height="210" alt="Water bottle" />
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="cp-tab2" style="font-size: 13px;"></div>
                        <div class="cp-title" style="padding-top: 5px;">Bottles sets.</div>
                        <div class="cp-tab2">
                            <div class="pic-model">
                                <ul>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/N12.png" width="140" height="210" alt="N12" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/N28.jpg" width="140" height="210" alt="N28" />
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="cp-tab3" style="font-size: 13px;"></div>
                        <div class="cp-title" style="padding-top: 5px;">Bicycles bags</div>
                        <div class="cp-tab3">

                            <div class="pic-model">
                                <ul>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/bag1.png" width="140" height="210" alt="可扩展式后货架包" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/bag2.png" width="140" height="210" alt="可扩展式后货架包1" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank">
                                            <img src="../images/bike/bag3.png" width="140" height="210" alt="快拆式尾包" />
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <%--    <div style="height: 20px;"><span style="color: white;">全球电动车网产品库</span></div>
            <script type="text/javascript">/*pro728x90*/ var cpro_id = 'u971200';</script>
            <script src="../cpro.baidu.com/cpro/ui/c.js" type="text/javascript"></script>--%>
        </div>
        <div style="clear: both"></div>
    </div>


<%--    <!-- 右下角广告 BEGIN -->
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
    </style>--%>

</asp:Content>




<%--http://www.giantcyclingworld.com/web/bikes_view.php?id=10d1b01b-e339-46f1-8002-cae7ad27d841--%>


