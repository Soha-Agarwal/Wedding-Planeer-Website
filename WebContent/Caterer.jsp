<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ include file="header.jsp" %>
    <!DOCTYPE html>
<html lang="en">
<head>
	<title>Resto - HTML5/CSS3 Restaurant Home Page Website Template</title>
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="Resto HTML5/CSS3 Restaurant Home Page website Template"/>

	<link rel="stylesheet" type="text/css" href="csscat/reset.css">
	<link rel="stylesheet" type="text/css" href="csscat/main.css">
		<link rel="stylesheet" type="text/css" href="cssnew/style.css">
		<link rel="stylesheet" type="text/css" href="csscat/slider.css">
	
</head>
<body>

	<!--  start header  -->
	<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="img/images1.png" alt=""></a></h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li class="current"><a href="index.html">Home</a></li>
            <li class="with_ul"><a href="#">Tradition</a>
              <ul>
                <li><a href="tradition.html">Maharashtrian</a></li>
                <li><a href="tradition.html">South Indian</a></li>
 		<li><a href="tradition.html">Punjabi</a></li>
 		<li><a href="tradition.html">Christian</a></li>
	        <li><a href="tradition.html">Muslim</a></li>
              </ul>
            </li>
            <li><a href="#">Vendor</a>
	     <ul>
		<li><a href="Controller?param=deco">Theme Decoration</a></li>
					<li><a href="JewelleryController">Jewellery</a></li>
					<li><a href="CatererController">Caterer</a></li>
					<li><a href="MusicController">Musicians</a></li>					
					<li><a href="BeauticianController">Beautician</a></li>
					<li><a href="InvitationController">Cards</a></li>
					<li><a href="ControllerPhoto">Photographer</a></li>					
					<li><a href="ClothingController">Clothing</a></li>
              </ul>
	    </li>
            <li><a href="VenueController">Venue</a></li>
            <li><a href="Controller?param=login">Login/Signup</a></li>
          </ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>


	<!--  start hero  -->
	<section class="hero">
		<div class="caption">
			<h3>Caterers</h3>
			<h4>
				<span class="rsep"></span>
				
				<span class="lsep"></span>
			</h4>
			
		</div>
	</section><!--  end hero  -->


	<!--  start menu  -->
	<section class="menu">
		<div class="wrapper">
			<div class="menu_title">
				<h2>The Menu</h2>
				
			</div>
			<c:forEach var="cater" items="${caterer}" varStatus="caterloop">
			 <h1 align="center">
			<c:out value="${cater.trad_name}"></c:out></h1>
			<c:set var="type"  value="${cater.veg_nonveg}"/>
			
  				
			
			<div class="mean_menu">
				<!--  left menu row  -->
				
				<article class="lmenu">
				<c:if test="${type eq 'Veg'}">				
				<h2>Veg</h2>
					<ul>
					
						<li>
							<div class="item_info">
							
								<h2 class="item_name">${cater.packagename}</h3>
							</div>
							<h2 class="price">${cater.price}</h4>
							<span class="separator"></span>
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type1}</h3>
								<p class="item_desc">${cater.name1}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type2}</h3>
								<p class="item_desc">${cater.name2}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type3}</h3>
								<p class="item_desc">${cater.name3}</p>
							</div>
							<h4 class="price">$30</h4>
							<span class="separator"></span>
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type4}</h3>
								<p class="item_desc">${cater.name4}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type4}</h3>
								<p class="item_desc">${cater.name4}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type5}</h3>
								<p class="item_desc">${cater.name5}</p>
							</div>
							
						</li>
					</ul>
				</c:if>
				</article>
				
					<!--  right menu row  -->
				<article class="rmenu">
				<h2>Non-Veg</h2>
				<c:if test="${type eq 'NonVeg'}">	
					<li>
							<div class="item_info">
							
								<h2 class="item_name">${cater.packagename}</h3>
							</div>
							<h2 class="price">${cater.price}</h4>
							<span class="separator"></span>
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type1}</h3>
								<p class="item_desc">${cater.name1}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type2}</h3>
								<p class="item_desc">${cater.name2}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type3}</h3>
								<p class="item_desc">${cater.name3}</p>
							</div>
							<h4 class="price">$30</h4>
							<span class="separator"></span>
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type4}</h3>
								<p class="item_desc">${cater.name4}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type4}</h3>
								<p class="item_desc">${cater.name4}</p>
							</div>
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">${cater.type5}</h3>
								<p class="item_desc">${cater.name5}</p>
							</div>
							
						</li>
					</ul>
					</c:if>
				</article>
			</div>

			<!--  hidden menu items  -->
			</c:forEach>

			<div class="load-more">
				<a href="#" id="more_items">
					show more
					<hr/>
					<span class="bottom_arrow"></span>
				</a>
			</div>
		</div>
	</section><!--  end menu  -->


	
	
</body>
</html>