<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Caterer</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

 

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic|Merriweather:300,400italic,300italic,400,700italic' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="caterercss/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="caterercss/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="caterercss/simple-line-icons.css">
	<!-- Datetimepicker -->
	<link rel="stylesheet" href="caterercss/bootstrap-datetimepicker.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="caterercss/flexslider.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="caterercss/bootstrap.css">

	<link rel="stylesheet" href="caterercss/style.css">

<link rel="stylesheet" href="cssnew/slider.css">

	<link rel="stylesheet" href="cssnew/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
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
            </li>
          </ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
	


		

		

		<div id="fh5co-menus" data-section="menu">
			<div class="container">
			<c:forEach var="c1" items="${caterer}">
				<div class="row text-center fh5co-heading row-padded">
					
					<div class="col-md-8 col-md-offset-2">

						<h2 class="heading to-animate"><c:out value="${c1.packagename}" /></h2>
							<div class="fh5co-food-pricing">
								<h2>Price:</h2><h2><c:out value="${c1.price}" /></h2>
									</div>
						<h3><c:out value="${c1.veg_nonveg}"></c:out></h3>
						
					</div>
				</div>
				<div class="row row-padded">
				<c:set var="type" value="${c1.type1}"></c:set>
				<c:set var="type2" value="${c1.type2}"></c:set>
				<c:set var="type3" value="${c1.type3}"></c:set>
				<c:set var="type4" value="${c1.type4}"></c:set>
				<c:set var="type5" value="${c1.type5}"></c:set>
				<c:if test="${type eq 'Salads' || type2 eq 'Salads' || type3 eq 'Salads' }">
				
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Salads</h2>
							<c:if test="${type eq 'Salads' }">
							  
							<ul>
								<li><c:out value="${c1.name1}"></c:out></li>
							
							</ul>
							</c:if>
							<c:if test="${type2 eq 'Salads'}">
							  
							<ul>
								<li><c:out value="${c1.name2}"></c:out></li>
							
							</ul>
							</c:if>
							<c:if test="${type3 eq 'Salads'}">
							  
							<ul>
								<li><c:out value="${c1.name3}"></c:out></li>
							
							</ul>
							</c:if>
						</div>
					</div>
					</c:if>
			<c:if test="${type eq 'Main Course' || type2 eq 'Main Course' || type3 eq 'Main Course' || type4 eq 'Main Course'}">
					
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							
							<h2 class="fh5co-dishes">Main Course</h2>
							<c:if test="${type eq 'Main Course'}">
							<ul>
								<c:out value="${c1.name1}"></c:out>
							</ul>
						</c:if>
						<c:if test="${type2 eq 'Main Course'}">
							<ul>
								<c:out value="${c1.name2}"></c:out>
							</ul>
						</c:if>
						<c:if test="${type3 eq 'Main Course'}">
							<ul>
								<c:out value="${c1.name3}"></c:out>
							</ul>
						</c:if>
						<c:if test="${type4 eq 'Main Course'}">
							<ul>
								<c:out value="${c1.name4}"></c:out>
							</ul>
						</c:if>
						<c:if test="${type5 eq 'Main Course'}">
							<ul>
								<c:out value="${c1.name5}"></c:out>
							</ul>
						</c:if>
						</div>
					</div>
					</c:if>
					
					<c:if test="${type eq 'Deserts' || type2 eq 'Deserts' || type3 eq 'Deserts' || type4 eq 'Deserts' || type5 eq 'Deserts'}">	
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Desserts</h2>
							<c:if test="${type eq 'Deserts'}">
							<ul>
								<c:out value="${c1.name1}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type2 eq 'Deserts'}">
							<ul>
								<c:out value="${c1.name2}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type3 eq 'Deserts'}">
							<ul>
								<c:out value="${c1.name3}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type4 eq 'Deserts'}">
							<ul>
								<c:out value="${c1.name4}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type3 eq 'Deserts'}">
							<ul>
								<c:out value="${c1.name5}"></c:out>
							</ul>
							</c:if>
						</div>
					
					</div>
						</c:if>
					</div>
		<c:if test="${type eq 'Starters' || type2 eq 'Starters' || type3 eq 'Starters' || type4 eq 'Starters' || type5 eq 'Starters'}">	
					
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Starters</h2>
							<c:if test="${type eq 'Starters'}">
							<ul>
								<c:out value="${c1.name1}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type2 eq 'Starters'}">
							<ul>
								<c:out value="${c1.name2}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type3 eq 'Starters'}">
							<ul>
								<c:out value="${c1.name3}"></c:out>
							</ul>
							</c:if>
							<c:if test="${type4 eq 'Starters'}">
							<ul>
								<c:out value="${c1.name4}"></c:out>
							</ul>
							<c:if test="${type5 eq 'Starters'}">
							<ul>
								<c:out value="${c1.name5}"></c:out>
							</ul>
							</c:if>
							</c:if>
						</div>
						<div><form action="CartController11" method="post">
				<input type="hidden" name="description" value="${c1.packagename}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${c1.price}">
				<input type="hidden" name="category" value="Caterer">
												<input type="hidden" name="email" value="${sessionScope.email}">
																<input type="submit" name="addtocart" value="Add to Cart"> </form>
												</div>
				
					</div>
					</c:if>
					</div>
					</div>
					</c:forEach>
				

		

		

	


	
	
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap DateTimePicker -->
	<script src="js/moment.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<script>
		$(function () {
	       $('#date').datetimepicker();
	   });
	</script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>
    