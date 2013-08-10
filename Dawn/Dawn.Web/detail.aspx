<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Dawn.Web.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <title>PROPEL Advanced SL1 ISP 2014 - 自行車全車系 - 捷安特 | 自行車 | Giant Bicycles  | Taiwan 臺灣</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="expires" content="-1" />
    <meta property="og:title" content="PROPEL Advanced SL1 ISP 2014" />
    <meta property="og:type" content="sport" />

    <link href="http://www.giantcyclingworld.com/web/css/smoothness/jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css">
    <link href="http://www.giantcyclingworld.com/web/css/jquery.jdMenu.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
    <script type="text/JavaScript" src="js/jquery.min.js"></script>
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/jquery/jquery-ui-1.8.2.custom.min.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/jquery/ui/i18n/jquery.ui.datepicker-zh-TW.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/jquery/jquery.bgiframe.min.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/xml/tinyxmlsax.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/xml/tinyxmlw3cdom.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/jquery/jquery.cycle.min.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/jquery.ae.image.resize.min.js"></script>
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/common.js"></script>


    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/lib/lang/zh_TW.js"></script>
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/jquery/jquery.alerts.js"></script>
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/jquery/jquery.pngFix.js"></script>
    <link href="http://www.giantcyclingworld.com/web/css/giant-master.css" rel="stylesheet" type="text/css" />
    <link href="http://www.giantcyclingworld.com/web/css/layout-b-right.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="http://www.giantcyclingworld.com/web/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.giantcyclingworld.com/web/favicon.ico" type="image/x-icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '127345383995255',
                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true  // parse XFBML
            });
        };
    </script>
    <link rel="stylesheet" href="http://www.giantcyclingworld.com/web/css/cloud-zoom.css" type="text/css" />
    <link href="http://www.giantcyclingworld.com/web/css/rating/jquery.rating.css" rel="stylesheet" type="text/css" />
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/lib/rating/jquery.rating.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/lib/blockui/jquery.blockUI.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/lib/cycle/jquery.cycle.all.min.js"></script>
    <script type="text/JavaScript" src="http://www.giantcyclingworld.com/web/js/bikes.js"></script>
    <script type="text/javascript" src="http://www.giantcyclingworld.com/web/js/cloud-zoom.1.0.2.min.js"></script>

    <div class="banner_band_other">
        <div class="container">
            <div class="portflio_text"></div>
            <div class="other_banner_header">Duis eget nisl sit amet eros sagittis</div>
            <div class="banner_content">Cras sed elit ut ipsum rutrum cursus. Morbi volutpat posuere tempus. Suspendisse nec purus ac justo congue dapibus. Sed augue nibh, volutpat iaculis posuere sit amet, luctus eu leo.</div>
        </div>
    </div>

    <%--<div class="contact_middle_content">--%>
        <div class="container">


            <div id="layout_wrap" class="bikes_detail">


                <div class="maintop_wrap">
                    <h6><a href="index.aspx">Home</a><span>﹥</span><a href="list.aspx">Products</a><span>﹥</span>PROPEL Advanced SL1 ISP 2014</h6>
                </div>
                <div id="main_wrap">

                    <div class="bike_detail_photo">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td align="center" valign="middle">
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div id="wrap" style="top: 0px; z-index: 9999; position: relative;">
                                                            <a href="images/upload/56df10b8-91c1-4532-838a-7af73c028d26_2000x1365.jpg" class="cloud-zoom" id="zoom1" rel="adjustX: 10, adjustY:-4" style="position: relative; display: block;">
                                                                <img src="images/upload/56df10b8-91c1-4532-838a-7af73c028d26_500x340.jpg" style="display: block;"/>
                                                            </a>
                                                            <div class="mousetrap" style="background-image: url(http://www.giantcyclingworld.com/web/); z-index: 999; position: absolute; width: 500px; height: 308px; left: 0px; top: 0px; cursor: move;"></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="bike_detail_info1">
                        <h2>PROPEL Advanced SL1 ISP 2014</h2>
                        <h5>
                            <p>
                                <span style="color: #ff0000">MY14 搶纖上市</span><br>
                                <br>
                                地表最快的空氣力學公路車<br>
                                <span style="color: #0000ff">Team Blanco車手Theo Bos騎著Propel Advanced SL連連奪勝！<br>
                                </span>
                            </p>
                        </h5>

                    </div>
                     <div class="bike_detail_info2">
                    <div class="bike_detail_photos_area">
                        <div class="bike_detail_photos">
                            <a href="#" class="photos_img_on cloud-zoom-gallery" title="Red" rel="useZoom: 'zoom1', smallImage: 'uploaded/filemanager/56df10b8-91c1-4532-838a-7af73c028d26_500x340.jpg' ">
                                <img src="http://www.giantcyclingworld.com/web/uploaded/filemanager/56df10b8-91c1-4532-838a-7af73c028d26_220x150.jpg" height="40" width="65"></a>

                        </div>
                    </div>
                    <p style="clear: both;"></p>
                </div>
                </div>
                <!--main_wrap end -->
                <div class="mainbottom_wrap"></div>
            </div>

            <!--mainall_wrap end -->
            <div class="tab bike_detail_info3" style="text-align: left">
                <div class="tab_nav clearfix">
                    <ul>

                        <li class="tab_nav_r"><a href="#" onclick="return false;"><span>產品描述</span></a></li>
                        <li class="tab_nav_r"><a href="#" onclick="return false;"><span>詳細規格</span></a></li>
                        <li class="tab_nav_r"><a href="#" onclick="return false;"><span>評論</span></a></li>
                        <li class="tab_selected"><a href="#" onclick="return false;"><span>車架幾何</span></a></li>
                    </ul>
                </div>


                <div id="fragment-1" class="tab_confirm" style="display: none;">
                    <div class="bike_detail_info3_in">
                        <p>
                            <strong>PROPEL Advanced SL1 ISP 2014</strong><br>
                            <strong>車&nbsp;架</strong>&nbsp;—&nbsp;GIANT ADVANCED SL 超輕碳纖維低風阻車架<br>
                            <strong>前&nbsp;叉</strong>&nbsp;— &nbsp;GIANT ADVANCED SL低風阻碳纖維前叉(一體式碳纖維前叉OverDrive 2 Steerer)<br>
                            <strong>速&nbsp;別</strong>&nbsp;—&nbsp;22<br>
                            <strong>前變速器</strong>&nbsp;—&nbsp;SHIMANO Dura Ace 11S<br>
                            <strong>後變速器</strong>&nbsp;—&nbsp;SHIMANO Dura Ace 11S<br>
                            <strong>顏&nbsp;色</strong>&nbsp;—&nbsp;黑<br>
                            <strong>重&nbsp;量</strong>&nbsp;—&nbsp;6.8 kg-M(不含腳踏)
                        </p>
                        <div>
                            <p>
                                PROPEL ADVANCED SL除承襲了全部TCR Advanced SL系列的騎行優點以及Trinity Advanced SL計時車系列的空氣力學設計外，<br>
                                捷安特獨家開發的ISP一體式導流座管設計、ADVANCED SL最高等級的碳纖材質技術，OVERDRIVE2第二代加大車首設計、<br>
                                POWERCORE整合五通下叉動力傳導設計、RIDESENSE整合式無線碼表感測器以及內走線設計等技術更是全數保留複製在此車上，<br>
                                這一切的設計自始至終皆是為了提供給所有使用者最輕、最快、最強的「全方位低風阻公路競賽自行車 GIANT PROPEL ADVANCED SL 」！
                            </p>
                            注意事項：<br>
                            <span style="color: #ff0000"><span style="font-size: 12pt">※</span><span style="font-size: x-small">此車車體塗裝採最低量化烤漆呈現碳纖原色，為全球時下最流行之輕量化塗裝設計，因此在車體部分位置將出現不規則碳纖原色，<br>
                                而非烤漆塗裝品質異常，亦無安全之疑慮，請放心購買。<br>
                            </span></span>
                            <div style="text-indent: -24pt; margin: 0cm 0cm 0pt 24pt">
                                <br>
                                <div>
                                    <img alt="" width="720" height="1417" src="http://www.giantcyclingworld.com.tw/web/uploaded/filemanager/58afffb7-7c15-4614-805d-49ad7212449e.jpg"><br>
                                    &nbsp;
                                </div>
                            </div>
                            <%--<iframe height="315" src="http://www.youtube.com/embed/4hTfpIv8zMM" frameborder="0" width="560" allowfullscreen=""></iframe>--%>
                        </div>
                    </div>

                    <%--            <div class="bike_others">
                <h5>同車系車款：</h5>
                <ul>
                    <li>
                        <a href="bikes_view.php?id=0b292242-e604-4b14-9d91-ceac04cd392a" class="others_bikephoto">
                            <img src="http://www.giantcyclingworld.com/web/uploaded/filemanager/675ca483-8790-49d5-90d5-6ab5fada0d76_220x150.jpg" alt="PROPEL Advanced SL1 ISP" height="61" width="100"></a>						<a href="bikes_view.php?id=0b292242-e604-4b14-9d91-ceac04cd392a">PROPEL Advanced SL1 ISP</a>
                    </li>
                </ul>
                <p style="clear: both;"></p>
            </div>--%>
                </div>
                <div id="fragment-2" class="tab_confirm" style="display: none;">
                    <div class="bike_detail_info4">
                        <table cellspacing="0" cellpadding="0" width="95%" id="spe_table">
                            <tbody>
                                <tr>
                                    <th rowspan="4">車架系統 </th>
                                    <th>年度</th>
                                    <td>2014</td>
                                </tr>
                                <tr>
                                    <th>車架 </th>
                                    <td>GIANT ADVANCED SL 超輕碳纖維低風阻車架</td>
                                </tr>
                                <tr>
                                    <th>前叉 </th>
                                    <td>GIANT ADVANCED SL低風阻碳纖維前叉(一體式碳纖維前叉OverDrive 2 Steerer)</td>
                                </tr>



                                <tr>
                                    <th>顏色</th>
                                    <td>黑</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">操控系統 </th>
                                    <th>車把手 </th>
                                    <td>GIANT CONTACT SLR AERO 31.8碳纖維低風阻把手</td>
                                </tr>
                                <tr>
                                    <th>車手豎桿 </th>
                                    <td>GIANT Contact SLR AERO (OD2)</td>
                                </tr>
                                <tr>
                                    <th rowspan="4">變速系統 </th>
                                    <th>變速把手 </th>
                                    <td>SHIMANO Dura Ace ST-9000</td>
                                </tr>
                                <tr>
                                    <th>前變速器 </th>
                                    <td>SHIMANO Dura Ace 11S</td>
                                </tr>
                                <tr>
                                    <th>後變速器</th>
                                    <td>SHIMANO Dura Ace 11S</td>
                                </tr>
                                <tr>
                                    <th>速別</th>
                                    <td>22</td>
                                </tr>

                                <tr>
                                    <th rowspan="1">煞車系統 </th>
                                    <th>煞車組</th>
                                    <td>SPEEDCONTROL SLR專用煞車夾器</td>
                                </tr>
                                <tr>
                                    <th rowspan="4">傳動系統 </th>
                                    <th>大齒盤 </th>
                                    <td>SHIMANO Dura Ace FC-9000 53X39</td>
                                </tr>
                                <tr>
                                    <th>飛輪 </th>
                                    <td>SHIMANO Dura Ace CS9000-11S 11-25T</td>
                                </tr>
                                <tr>
                                    <th>鏈條 </th>
                                    <td>SHIMANO Dura Ace CN-9000</td>
                                </tr>
                                <tr>
                                    <th>踏板 </th>
                                    <td>WELLGO M20</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">轉動系統 </th>
                                    <th>輪圈 </th>
                                    <td>ZIPP 404 </td>
                                </tr>


                                <tr>
                                    <th>外胎 </th>
                                    <td>GIANT P-SLR1 700x23C</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">其他</th>
                                    <th>坐墊 </th>
                                    <td>FIZIK ARIONE R3</td>
                                </tr>

                                <tr>
                                    <th>大約重量 , 不含腳踏 </th>
                                    <td>6.8 kg-M</td>
                                </tr>
                                <tr>
                                    <th>價格</th>
                                    <th>建議售價 </th>
                                    <td>NT 238,000</td>
                                </tr>
                            </tbody>
                        </table>
                        <p>我們保留權利，對產品進行修改本網站所載資料在任何時間，恕不另行通知，包括有關設備，規格，型號，顏色和材料。</p>
                    </div>
                </div>
                <div id="Div1" class="tab_confirm" style="display: none;">
                    <div class="comments_area">
                        <p class="comments_lots"><span>0</span>則短評</p>
                        <ul>
                        </ul>
                    </div>

                    <div class="comments_form">
                    </div>
                </div>
                <div id="Div2" class="tab_confirm" style="display: block;">
                    <div class="bike_detail_info3_in">
                        <img src="http://www.giantcyclingworld.com/web/uploaded/filemanager/0dfec5d8-aa36-44c0-a259-a695c0d7bc30.jpg" />
                    </div>
                </div>
                <div class="mainbottom_wrap bike_detail_bottom"></div>
            </div>
            <!-- tab endd -->

            <p style="clear: both; height: 1px;">&nbsp;</p>
            <input type="hidden" id="id" name="id" value="10d1b01b-e339-46f1-8002-cae7ad27d841" />




        </div>
  <%--  </div>--%>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-1203264-16']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();


</script>

</asp:Content>




<%--http://www.giantcyclingworld.com/web/bikes_view.php?id=10d1b01b-e339-46f1-8002-cae7ad27d841--%>
