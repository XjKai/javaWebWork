<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //获取动态路径 格式：   http://localhost:8080/book/
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"pages"+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <base href="<%=basePath%>">
  <title>百恩芯(测试)</title>
  <link rel="icon" href="ico.ico">

  <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
  <link rel="stylesheet" type="text/css" href="rs-plugin/rs-plugin/css/settings.css" media="screen" />

  <!-- Bootstrap Core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="css/ionicons.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <link rel="stylesheet" href="css/swiper.min.css">
  <link rel="stylesheet" href="sass/common.css">

  <!-- COLORS -->
  <link rel="stylesheet" id="color" href="css/default.css">

  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>

  <!--<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>--->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>

  <!-- Wrap -->
  <div id="wrap">

    <!-- header -->
    <header class="header-normal">
      <div class="sticky">
        <div class="container">
          <!-- Logo -->
          <!-- <div class="logo"> <a href="index.jsp"><img class="img-responsive" src="img/logo.png" alt=""></a>
          </div> -->

          <!-- Navigation -->
          <nav class="navbar webimenu">
              <a href="index.jsp">
              <img class="img-responsive"  src="img/logo.png" alt="" style="float: left ; position: relative; bottom: 0em;">
              </a>
            <!-- MENU BUTTON RESPONSIVE -->
            <div class="menu-toggle"> <img  src="img/menu.png"> </div>
            <!-- NAV -->
            <ul class="nav ownmenu">
              <li> <a href="index.jsp">首页</a></li>
              <li class="active"> <a href="about.jsp">公司简介</a></li>
              <li> <a href="news.jsp">新闻</a></li>
              <li> <a href="team.jsp">团队</a></li>

            </ul>
          </nav>
        </div>
      </div>
    </header>

    <!--======= HOME MAIN SLIDER =========-->
    <section class="sub-bnr sub-other" data-stellar-background-ratio="0.5">
      <div class="position-center-center">
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h3>文字文字文字文字文字文</h3>
              <div class="about-subtitle top">文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字</div>
              <div class="about-subtitle">文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Content -->
    <div id="content">

      <!-- TEAM -->
      <section class="ahout light-gray-bg padding-top-150 padding-bottom-150">
        <div class="container">
          <div class="row">
            <div class="col-md-10 col-md-offset-1">
              <div class="content-box">
                <img src="img/star.png" alt="">
                <div class="item ps1">
                  <span>15件</span>发明专利
                </div>
                <div class="item ps2">
                  <span>1件</span>外观设计专利
                </div>
                <div class="item ps3">
                  <span>25件</span>实用新型专利
                </div>
                <div class="item ps4">
                  <span>2件</span>软件著作权
                </div>

              </div>
              <div class="tips">
                文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- TEAM -->
      <section class="ahout light-gray-bg swiper-height">
        <div style="height: 470px">
          <div class="roll-wrap roll_row" id="e">
            <ul class="roll__list" style="position: absolute; left: 0; top: 0;">
              <li><img src="img/photo/1-1.jpg" alt=""></li>
              <li><img src="img/photo/1-2.jpg" alt=""></li>
              <li><img src="img/photo/1-3.jpg" alt=""></li>
              <li><img src="img/photo/1-4.jpg" alt=""></li>
              <li><img src="img/photo/1-5.jpg" alt=""></li>
              <li><img src="img/photo/2-1.jpg" alt=""></li>
              <li><img src="img/photo/2-2.jpg" alt=""></li>
              <li><img src="img/photo/2-3.jpg" alt=""></li>
              <li><img src="img/photo/2-4.jpg" alt=""></li>
              <li><img src="img/photo/2-5.jpg" alt=""></li>
            </ul>
          </div>
        </div>
      </section>

    </div>
  </div>
    <!--======= FOOTER =========-->
    <footer>
      <div class="container">

        <!-- FOOTER -->
        <div class="footer-info">
          <div class="row">

            <!-- Links -->
            <div class="col-md-4">
              <h6>关于我们</h6>
              <ul class="links">
                <li><a href="about.jsp">公司介绍 </a></li>
                <li><a href="team.jsp">团队介绍</a></li>
                <li><a href="news.jsp">加入我们</a></li>
                <!-- <li><a href="#.">购买产品</a></li> -->
              </ul>
            </div>

            <!-- keep in touch -->
            <div class="col-md-4">
              <h6>联系我们</h6>
              <p>邮箱 kkk@aaaaa.com.cn</p>
              <p>电话 (+86) 123456789</p>
            </div>


            <!-- keep in touch -->
            <div class="col-md-4">
              <h6>公众号二维码</h6>
              <img src="img/two.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </footer>



  <!-- JavaScripts -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/own-menu.js"></script>
  <script src="js/jquery.lighter.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/color-switcher.js"></script>
  <script src="js/rollSlide.js"></script>
  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript" src="rs-plugin/rs-plugin/js/jquery.tp.t.min.js"></script>
  <script type="text/javascript" src="rs-plugin/rs-plugin/js/jquery.tp.min.js"></script>
  <script src="js/main.js"></script>
  <script>
    $('#e').rollNoInterval().left();
  </script>
</body>

</html>