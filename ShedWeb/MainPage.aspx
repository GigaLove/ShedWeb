<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ShedWeb.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smart Shed</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/sticky-navigation.css" />
    <!------ js ------>
    <script src="js/jquery.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <!------ js ------>
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>

    <!-- start-smoth-scrolling -->
    <script>
        $(function () {

            // grab the initial top offset of the navigation 
            var sticky_navigation_offset_top = $('#sticky_navigation').offset().top;

            // our function that decides weather the navigation bar should have "fixed" css position or not.
            var sticky_navigation = function () {
                var scroll_top = $(window).scrollTop(); // our current vertical position from the top

                if (scroll_top > sticky_navigation_offset_top) {
                    $('#sticky_navigation').css({ 'position': 'fixed', 'top': 0, 'left': 0 });
                } else {
                    $('#sticky_navigation').css({ 'position': 'relative' });
                }
            };

            // run our function on load
            sticky_navigation();

            // and run it again every time you scroll
            $(window).scroll(function () {
                sticky_navigation();
            });

            // NOT required:
            // for this demo disable all links that point to "#"
            $('a[href="#"]').click(function (event) {
                event.preventDefault();
            });

        });
    </script>
    <script>
        var tf = true;
        var hf = true;
        var If = true;
        var pf = true;
        var wf = true;
        var gf = true;
    </script>
    <!--- fonts --->
    <link href='http://fonts.useso.com/css?family=Lato:100,300italic,400,700,900,300italic,700italic,900italic' rel='stylesheet' type='text/css' />
    <link href='http://fonts.useso.com/css?family=Raleway:400,200,900,800,700,600,500,300,100' rel='stylesheet' type='text/css' />
    <!--- fonts --->
</head>
<body>
    <form name="mainForm" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
            <asp:Timer ID="getDataTimer" runat="server" OnTick="getDataTimer_Tick" Interval="3000" Enabled="true"></asp:Timer>
            <%--<asp:Timer ID="getExceptionDataTimer" runat="server" OnTick="getExceptionDataTimer_Tick" Interval="3000" Enabled="true"></asp:Timer>
            <asp:Timer ID="getUserlogTimer" runat="server" OnTick="getUserlogTimer_Tick" Interval="10000" Enabled="true"></asp:Timer>--%>
        </div>

        <div id="demo_top_wrapper">
            <div id="demo_top">
                <div class="header" id="home">
                    <!--<div class="logo">
						<a href="#">
							<img src="images/logo.png" alt="" />
						</a>
					</div>-->
                </div>

            </div>
            <div id="sticky_navigation_wrapper">
                <div id="sticky_navigation">
                    <div class="top-menu">
                        <div class="container">
                            <a href="#home">
                                <h4>Dark Whisper</h4>
                            </a>
                            <span class="menu"></span>
                            <ul>
                                <li><a class="scroll" href="#about">ABOUT</a>
                                </li>
                                <li><a class="scroll" href="#current_stats">CURRENT STATS</a>
                                </li>
                                <li><a class="scroll" href="#emergency_log">EMERGENCY LOG</a>
                                </li>
                                <li><a class="scroll" href="#guest">GUEST RECORD</a>
                                </li>
                                <div class="clearfix"></div>
                            </ul>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section id="main">
            <div class="about" id="about">
                <h3>Welcome to Dark Whisper</h3>
                <b></b>
                <div class="container">
                    <div class="about-grids">
                        <div class="col-md-6 about-info">
                            <h4>Guidance</h4>
                            <label></label>
                            <p>
                                Welcome to Dark Wisper, the smart flower garden. In this secret flourish paradise, petals are defended as our faith, leaves are built to shelters, thorns are sharpened to serve as guardians. We rule the temperature, the humidity, the illumination, we keep out the outlanders, we classify flowers into different uses. They grow, blossom, and languish for a better circle. Feel the embrace of the fragrancy, and listen to their whispers.
                            </p>
                        </div>
                        <div class="col-md-6 about-techs">
                            <h4>Techs</h4>
                            <label></label>
                            <p>
                                <i>In this sacred garden, we use multiple techs to ensure the security and the quality.
							Here we illustrate what we use to guard our faith.</i>
                            </p>
                            <div class="sensor-grid">
                                <div class="sensor-bar">
                                    <div class="info">
                                        <p>SENSORS</p>
                                    </div>
                                </div>
                                <div class="icon">
                                    <img src="images/skil.png" />
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="web-grid">
                                <div class="web-bar">
                                    <div class="info2">
                                        <p>WEB SERVICES</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="icon">
                                    <img src="images/skil.png">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="cloud-grid">
                                <div class="cloud-bar">
                                    <div class="info3">
                                        <p>CLOUD CALCULATION</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="icon">
                                    <img src="images/skil.png">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <a></a>
            </div>
            <!---->
            <div class="current_stats" id="current_stats">
                <h3>CURRENT STATS</h3>
                <small></small>
                <p>
                    <i>As told above, we monitor and control key factors in the garden, offerring flowers a best enviornment to grow and blossom.</i>
                </p>
                <div class="container">
                    <div class="current_stats-top" id="top-sec">
                        <div class="current_stats-img">
                            <img src="images/C1.JPG" alt="" class="img-responsive" />
                        </div>
                        <div class="img-desc">
                            <h4>TEMPERATURE & HUMIDITY</h4>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                                </Triggers>
                                <ContentTemplate>
                                    <p style="font-size: 15px;">
                                        <i>Temperature：</i><br />
                                        <asp:Label ID="temperature" runat="server"></asp:Label>
                                    </p>
                                    <br />
                                    <p style="font-size: 15px;">
                                        <i>Humidity：</i><br />
                                        <asp:Label ID="humidity" runat="server"></asp:Label>
                                    </p>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <style>
                                .imageButtonStyle1 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 50px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/4.jpg) no-repeat left top;
                                }
                            </style>

                            <asp:ImageButton ID="conditionImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle1" OnClick="ImageButton_Click" />
                            <input type="button" name="temperature" onclick="aircon()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 50px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/4.jpg) no-repeat left top" />
                            <script type="text/javascript">
                                function aircon() {
                                    if (tf == true) {
                                        alert("Aircon ON");
                                        tf = false;
                                    }
                                    else {
                                        alert("Aircon OFF");
                                        tf = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel5" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="conditionImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>

                            <style>
                                .imageButtonStyle2 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 160px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/7.png) no-repeat left top;
                                }
                            </style>


                            <asp:ImageButton ID="waterImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle2" OnClick="ImageButton_Click" />
                            <input type="button" name="humidity" onclick="irrigation()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 160px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/7.png) no-repeat left top" />
                            <script type="text/javascript">
                                function irrigation() {
                                    if (hf == true) {
                                        alert("Irrigation ON");
                                        hf = false;
                                    }
                                    else {
                                        alert("Irrigation OFF");
                                        hf = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="waterImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>

                            <div class="dmnd"></div>
                        </div>
                    </div>
                    <div class="current_stats-top" id="Div1">
                        <div class="current_stats-img">
                            <img src="images/C2.JPG" alt="" class="img-responsive" />
                        </div>
                        <div class="img-desc">
                            <h4>ILLUMINATION & PRESSURE</h4>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                                </Triggers>
                                <ContentTemplate>
                                    <p style="font-size: 15px;">
                                        <i>Pressure：</i><br />
                                        <asp:Label ID="pressure" runat="server" Text=" "></asp:Label>
                                    </p>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <style>
                                .imageButtonStyle3 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 50px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/5.JPG) no-repeat left top;
                                }
                            </style>

                            <asp:ImageButton ID="lightImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle3" OnClick="ImageButton_Click" />
                            <input type="button" name="illuminition" onclick="light()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 50px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/5.JPG) no-repeat left top" />
                            <script type="text/javascript">
                                function light() {
                                    if (If == true) {
                                        alert("Light ON");
                                        If = false;
                                    }
                                    else {
                                        alert("Light OFF");
                                        If = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel6" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="lightImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>

                            <style>
                                .imageButtonStyle4 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 160px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/6.png) no-repeat left top;
                                }
                            </style>

                            <asp:ImageButton ID="pressureImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle4" OnClick="ImageButton_Click" />
                            <input type="button" name="pressure" onclick="valve()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 160px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/6.png) no-repeat left top" />
                            <script type="text/javascript">
                                function valve() {
                                    if (pf == true) {
                                        alert("Valve ON");
                                        pf = false;
                                    }
                                    else {
                                        alert("Valve OFF");
                                        pf = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel7" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="pressureImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>

                            <div class="dmnd"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="current_stats-top" id="bottom-sec">
                        <div class="img-desc current_stats-sec">
                            <h4>SECURITY</h4>

                            <asp:UpdatePanel ID="UpdatePane3" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                                </Triggers>
                                <ContentTemplate>
                                    <p style="font-size: 15px;">
                                        <i>Door&Window：</i><br />
                                        <asp:Label ID="door" runat="server"></asp:Label>
                                    </p>
                                    <br />
                                    <p style="font-size: 15px;">
                                        <i>Smog：</i><br />
                                        <asp:Label ID="smoke" runat="server"></asp:Label>
                                    </p>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <style>
                                .imageButtonStyle5 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 50px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/8.jpg) no-repeat left top;
                                }
                            </style>

                            <asp:ImageButton ID="windowsImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle5" OnClick="ImageButton_Click" />
                            <input type="button" name="windows" onclick="w()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 50px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/8.jpg) no-repeat left top" />
                            <script type="text/javascript">
                                function w() {
                                    if (wf == true) {
                                        alert("Windows OPEN");
                                        wf = false;
                                    }
                                    else {
                                        alert("Windows LOCKED");
                                        wf = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel8" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="windowsImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>


                            <style>
                                .imageButtonStyle6 {
                                    width: 80px;
                                    height: 80px;
                                    position: absolute;
                                    top: 180px;
                                    left: 160px;
                                    border: 4px solid #DCDCDC;
                                    border-radius: 50%;
                                    background: url(images/3.JPG) no-repeat left top;
                                }
                            </style>

                            <asp:ImageButton ID="doorImageButton" runat="server" AlternateText=" " CssClass="imageButtonStyle6" OnClick="ImageButton_Click" />
                            <input type="button" name="gate" onclick="g()" style="width: 80px; height: 80px; position: absolute; top: 180px; left: 160px; border: 4px solid #DCDCDC; border-radius: 50%; background: url(images/3.JPG) no-repeat left top" />
                            <script type="text/javascript">
                                function g() {
                                    if (gf == true) {
                                        alert("Gate OPEN");
                                        gf = false;
                                    }
                                    else {
                                        alert("Gate LOCKED");
                                        gf = true;
                                    }
                                }
                            </script>
                            <asp:UpdatePanel ID="UpdatePanel9" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="doorImageButton" />
                                </Triggers>
                            </asp:UpdatePanel>


                            <div class="dmnd2"></div>
                        </div>
                        <div class="current_stats-img img-sec">
                            <img src="images/C3.JPG" alt="" class="img-responsive" />
                        </div>
                    </div>

                    <div class="current_stats-top" id="Div2">
                        <div class="img-desc current_stats-sec">
                            <h4>CURRENT STAT ANALYSIS</h4>
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server" ChildrenAsTriggers="True">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                                </Triggers>
                                <ContentTemplate>
                                    <p style="font-size: 15px;">
                                        <i>status：</i><br />
                                        <asp:Label ID="status" runat="server"></asp:Label>
                                    </p>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                            <div class="dmnd2"></div>
                        </div>
                        <div class="current_stats-img img-sec">
                            <img src="images/C4.JPG" alt="" class="img-responsive" />
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </div>
            </div>

            <asp:UpdatePanel ID="UpdatePanel10" runat="server" ChildrenAsTriggers="True">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                </Triggers>
                <ContentTemplate>
                    <div class="emergency_log" id="emergency_log">
                        <h3>EMERGENCY LOG</h3>
                        <small></small>
                        <script>
                            $(function () {
                                $("#slider1").responsiveSlides({
                                    auto: true,
                                    nav: true,
                                    speed: 500,
                                    namespace: "callbacks",
                                });
                            });
                        </script>

                        <div class="container2">
                            <div class="slider">
                                <ul class="rslides" id="slider1">
                                    <li>
                                        <div class="emergency1"></div>
                                        <div class="about-add-grid">
                                            <style>
                                                .exceptionRecordStyle {
                                                    font-size: 15px;
                                                    font-family: Lato;
                                                    color: burlywood;
                                                }
                                            </style>
                                            <asp:Label ID="exceptionRecord1" runat="server" CssClass="exceptionRecordStyle"></asp:Label>

                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="emergency2"></div>
                                        <div class="about-add-grid">
                                            <p style="font-size: 15px;">
                                                <asp:Label ID="exceptionRecord2" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="emergency3"></div>
                                        <div class="about-add-grid">
                                            <p style="font-size: 15px;">
                                                <asp:Label ID="exceptionRecord3" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="emergency4"></div>
                                        <div class="about-add-grid">
                                            <p style="font-size: 15px;">
                                                <asp:Label ID="exceptionRecord4" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="emergency5"></div>
                                        <div class="about-add-grid">
                                            <p style="font-size: 15px;">
                                                <asp:Label ID="exceptionRecord5" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <div class="contact text-center" id="guest">
                <h3>GUEST RECORD</h3>
                <i class="line"></i>
                <p>No one can escape from flowers' supersense.</p>

                <asp:UpdatePanel ID="UpdatePanel11" runat="server" ChildrenAsTriggers="True">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="getDataTimer" />
                    </Triggers>
                    <ContentTemplate>
                        <table align="center" border="5" height="200" width="800">
                            <tr>
                                <th style="text-align: center;">Person</th>
                                <th style="text-align: center;">Time</th>
                                <th style="text-align: center;">Arrival / Leaving</th>
                            </tr>
                            <tr align="center">
                                <td>
                                    <asp:Label ID="userLog00" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog01" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog02" runat="server"></asp:Label></td>
                            </tr>
                            <tr align="center">
                                <td>
                                    <asp:Label ID="userLog10" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog11" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog12" runat="server"></asp:Label></td>
                            </tr>
                            <tr align="center">
                                <td>
                                    <asp:Label ID="userLog20" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog21" runat="server"></asp:Label></td>
                                <td>
                                    <asp:Label ID="userLog22" runat="server"></asp:Label></td>
                            </tr>
                            <%-- <tr align="center">
                                    <td><asp:Label ID="userLog30" runat="server"></asp:Label></td>
                                    <td><asp:Label ID="userLog31" runat="server"></asp:Label></td>
                                    <td><asp:Label ID="userLog32" runat="server"></asp:Label></td>
                                </tr>
                                <tr align="center">
                                    <td><asp:Label ID="userLog40" runat="server"></asp:Label></td>
                                    <td><asp:Label ID="userLog41" runat="server"></asp:Label></td>
                                    <td><asp:Label ID="userLog42" runat="server"></asp:Label></td>
                                </tr>--%>
                        </table>
                        <p></p>
                        <p></p>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div class="fotter">
                <div class="scale"></div>
                <p>Copyright &copy; 2014.Company name All rights reserved.</p>
            </div>
        </section>
    </form>
</body>
</html>
