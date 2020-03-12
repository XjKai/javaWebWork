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
  <link rel="icon" href="ico.ico">
  <base href="<%=basePath%>">
  <title>百恩芯(测试)</title>

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

  <link rel="stylesheet" href="sass/common.css">

  <!-- COLORS -->
  <link rel="stylesheet" id="color" href="css/default.css">

  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>

  <!--<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>--->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<%--  <!--[if lt IE 9]>--%>
<%--    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
<%--    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--%>
<%--<![endif]-->--%>

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
              <li> <a href="about.jsp">公司简介</a></li>
              <li> <a href="news.jsp">新闻</a></li>
              <li class="active"> <a href="team.jsp">团队</a></li>

            </ul>
          </nav>
        </div>
      </div>
    </header>

    <!--======= HOME MAIN SLIDER =========-->
    <section class="sub-bnr sub-bnr1" data-stellar-background-ratio="0.5">
      <div class="position-center-center">
        <div class="container">
          <!-- <h3>Our Work</h3>
          <hr>
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">Portfolio</li>
          </ol> -->
          
        </div>
      </div>
    </section>

    <!-- Content -->
    <div id="content">

      <!-- BLOG -->
      <!-- Blog -->
      <section class="blog light-gray-bg padding-bottom-100 padding-top-100">
        <div class="container">

          <!-- Heading -->
          <div class="heading text-center">
            <h4 class="facts-title">
              <div class="facts-border border-right">
                <div class="border-short"></div>
                <div class="border-long"></div>
              </div>
              <div class="facts-text">核心创始人</div>
              <div class="facts-border">
                <div class="border-short"></div>
                <div class="border-long"></div>
              </div>
            </h4>
          </div>

          <!-- Row -->
          <div class="row">

            <!-- BLOG POST -->
            <div class="col-md-6">
              <article>
                <div class="clearfix">
                  <img class="img-responsive" src="img/head1.png" alt="">
                  <div class="img-info">
                    <div class="post-name">名字</div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文字文字</span> </div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文字文字文字文字文字</span> </div>
                  </div>
                </div>

                <div class="post-info">
                  <div class="post-in">
                    <div class="post-content">
                      文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                    </div>
                  </div>
                </div>
              </article>
            </div>

            <!-- BLOG POST -->
            <div class="col-md-6">
              <article>

                <div class="clearfix">
                  <img class="img-responsive" src="img/head2.png" alt="">
                  <div class="img-info">
                    <div class="post-name">名字</div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文字文字文字文字文字</span> </div>
                  </div>
                </div>
                <div class="post-info">
                  <div class="post-in">
                    <div class="post-content">
                      <div>文字文字文字文字文字文字文字文字字文字文字
                      </div>
                      <div>
                        文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                      </div>
                    </div>

                  </div>
                </div>
              </article>
            </div>

            <!-- BLOG POST -->
            <div class="col-md-6">
              <article>
                <div class="clearfix">
                  <img class="img-responsive" src="img/head3.png" alt="">
                  <div class="img-info">
                    <div class="post-name">名字</div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文字文字</span> </div>
                  </div>
                </div>
                <div class="post-info">
                  <div class="post-in">
                    <div class="post-content">
                      文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
                    </div>
                  </div>
                </div>
              </article>
            </div>
            <!-- BLOG POST -->
            <div class="col-md-6">
              <article>
                <div class="clearfix">
                  <img class="img-responsive" src="img/head4.png" alt="">
                  <div class="img-info">
                    <div class="post-name">名字</div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文文字文字文字</span> </div>
                    <div class="extra"> <span><i class="fa fa-mortar-board fa-4x "></i>文字文字文字文字文字文字</span> </div>
                  </div>
                </div>
                <div class="post-info">
                  <div class="post-in">
                    <div class="post-content">
                      <div>文字文字文字</div>
                      文字文字文字文字文字文字文字文字文字
                    </div>
                  </div>
                </div>
              </article>
            </div>
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
  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript" src="rs-plugin/rs-plugin/js/jquery.tp.t.min.js"></script>
  <script type="text/javascript" src="rs-plugin/rs-plugin/js/jquery.tp.min.js"></script>
  <script src="js/main.js"></script>
</body>

</html>