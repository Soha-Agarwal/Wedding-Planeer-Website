<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<style>
div.tab {
    overflow: hidden;
    border: 0px solid #ccc;
    background-color: #fff;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
font-family:'Headland One', serif;
color: #8b6369;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #faefbc;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color:#faefbc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 0px solid #ccc;
    border-top: none;
}
</style>
<title>Theme</title>
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
<h2>Theme</h2>
<br>
<br>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Gold')" id="defaultOpen">Gold</button>
  <button class="tablinks" onclick="openCity(event, 'Beach')">Beach</button>
  <button class="tablinks" onclick="openCity(event, 'Spring')">Spring</button>
  <button class="tablinks" onclick="openCity(event, 'Islamic')">Islamic</button>
</div>

<div id="Gold" class="tabcontent">
  <h3>Gold</h3>
  <c:forEach var="t" items="${theme}">
			<c:set var="type" value="${t.title}"/>
			
  				<c:if test="${type eq 'Gold'}">
  <div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img1}" width="250px"alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img2}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img3}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			</div>
		
			
			<h3>Price</h3><c:out value="${t.price}"></c:out>
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${t.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${t.price}">
				<input type="hidden" name="category" value="Decoration">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				</c:if>
			</c:forEach>
			
		</div>
    

<div id="Royal" class="tabcontent">
  <h3>Royal</h3>
  <c:forEach var="t1" items="${theme}">
			<c:set var="type" value="${t1.title}"/>
			
  				<c:if test="${type eq 'Royal'}">
  <div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="${t1.img1}" width="250px"alt=""></a>
						 </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="${t1.img2}" alt=""></a>
						 </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" class="image image-full"><img src="${t1.img3}" alt=""></a>
				 </div>
				</div>
			</div>
			</div>
		
			
			<h3>Price</h3><c:out value="${t1.price}"></c:out>
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${t1.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${t1.price}">
				<input type="hidden" name="category" value="Decoration">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				</c:if>
			</c:forEach>
			
		</div>
<div id="Beach" class="tabcontent">
  <h3>Beach</h3>
  <c:forEach var="t" items="${theme}">
			<c:set var="type" value="${t.title}"/>
			
  				<c:if test="${type eq 'Beach'}">
  <div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img1}" width="250px"alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img2}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img3}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			</div>
		
			
			<h3>Price</h3><c:out value="${t.price}"></c:out>
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${t.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${t.price}">
				<input type="hidden" name="category" value="Decoration">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				</c:if>
							</c:forEach>
			
		</div>

<div id="Spring" class="tabcontent">
  <h3>Spring</h3>
  <c:forEach var="t" items="${theme}">
			<c:set var="type" value="${t.title}"/>
			
  				<c:if test="${type eq 'Spring'}">
  <div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img1}" width="250px"alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img2}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img3}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			</div>
		
		
			<h3>Price</h3><c:out value="${t.price}"></c:out>
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${t.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${t.price}">
				<input type="hidden" name="category" value="Decoration">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				</c:if>
			</c:forEach>
			
		</div>
<div id="Islamic" class="tabcontent">
 <h3>Islamic</h3>
  <c:forEach var="t" items="${theme}">
			<c:set var="type" value="${t.title}"/>
			
  				<c:if test="${type eq 'Islamic'}">
  <div id="three-column" class="container">
			<div class="tbox1">
				<div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img1}" width="250px"alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img2}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="#" class="image image-full"><img src="${t.img3}" alt=""></a>
						<a href="#" class="button-style"></a> </div>
				</div>
			</div>
			</div>
		
			
			<h3>Price</h3><c:out value="${t.price}"></c:out>
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${t.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${t.price}">
				<input type="hidden" name="category" value="Decoration">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				</c:if>
			</c:forEach>
			
		</div>
	
<script>
function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
} 
document.getElementById("defaultOpen").click();
</script>
</body>
</html>