<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<title>Your Wedding Your Way</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="cssnew/style.css">
<link rel="stylesheet" href="cssnew/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body  class="page1">
<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="img/images1.png" alt=""></a></h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li class="current"><a href="index.html">Home</a></li>
            <li><a href="Controller?param=login">Login/Signup</a></li>
            <li><a href="ShoppingCart.jsp"><img alt="" src="img/cart1.png" height="50px" width="50px"></a>
            </ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
<div>
	<img src="img/Flowers3.jpg" alt="" height="600px" width="100%" align="right">
</div>
<div class="content page1">
  <div class="container_12">
    
    <div class="grid_12">
      <div class="banners">
        <div class="maxheight">
          <h2><a href="<%=request.getContextPath()%>/ThemeCustom?Theme=1" name="Theme">Theme</a></h2>
          <p>Select from a wide range of predefined themes.</p>
        </div>
        <div class="D">
          
          <p><a href="<%=request.getContextPath()%>/ThemeCustom?Custom=1" name="Custom"></a></p>
        </div>
        <div class="maxheight">
          <h2><a href="<%=request.getContextPath()%>/ThemeCustom?Custom=1" name="Custom">Custom</a></h2>
          <p>Select your own items for decoration.</p>
        </div>
      </div>
    </div>
    

</body>
</html>