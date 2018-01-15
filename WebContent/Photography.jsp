<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style></style>
<title>Your Wedding Your Way</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="cssnew/style.css">
<link rel="stylesheet" href="cssnew/slider.css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700|Archivo+Narrow:400,700" rel="stylesheet" type="text/css">
<link href="cssnew/default.css" rel="stylesheet" type="text/css" media="all" />
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
      <h1><a href="index.html"><img src="images/images1.png" alt=""></a></h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li class="current"><a href="index.html">Home</a></li>
           
            <li><a href="Controller?param=login">Login/Signup</a></li>
                        <li><a href="ShoppingCart.jsp"><img alt="" src="img/cart1.png" height="50px" width="50px"></a>
            </li>
          </ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
<br>
<h2>Photographer</h2>
<br>
<br>
<div>
<c:forEach var="photo" items="${photographer}">
            <div><h3>Photographer<c:out value="${photo.pg_id}"></c:out></h3>
Name:<c:out value="${photo.name}"></c:out>
<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${photo.name}">
				
				<input type="hidden" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${photo.price}">
				<input type="hidden" name="category" value="Photographer">
			<input type="hidden" name="email" value="${sessionScope.email}">
							<h3 ><input type="submit" name="addtocart" style="position:absolute; right:270px; color:#00FFFF" value="Book"></h3> </form>
			
<br>
        Contact:<c:out value="${photo.contact}"></c:out>
        <br>
        Price:<c:out value="${photo.price}"></c:out>
        <br>
        <br>
		</div>
<div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" ><img src="${photo.image1}" width="250px"alt=""></a>
						<a href="#"></a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" ><img src="${photo.image2}" width="250px" alt=""></a>
						<a href="#"></a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" ><img src="${photo.image3}" width="250px" alt=""></a>
						<a href="#"></a> </div>
				</div>
			</div>
<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" ><img src="${photo.image4}" width="250px" alt=""></a>
						<a href="#"></a> </div>
				</div>
			</div>
		</div>
    

		<div id="line"><hr/></div>
</c:forEach></div>
	
</body>
</html>