<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
    
<html>
<head>
<style>

body {font-family: "Lato", sans-serif;}

/* Style the tab */
div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
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
    font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
    <title>Decoration</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/responsive.css"/>
        <link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="cssd/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="cssd/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="cssd/bootstrap.css">

	<link rel="stylesheet" href="cssd/style.css">
<link rel="stylesheet" href="cssnew/slider.css">

	<link rel="stylesheet" href="cssnew/style.css">

	<!-- Modernizr JS -->
	<script src="cssd/modernizr-2.6.2.min.js"></script>
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

    
  <!--  <div id="fh5co-offcanvas">
		<a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i class="icon-cross3"></i> <span>Close</span></span></a>
		<div class="fh5co-bio">
			
			<h3 class="heading">Custom</h3>
			<h2>Emily Tran Le</h2>
			<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
		</div>

		<div class="fh5co-menu">
			<div class="fh5co-box">
				<h3 class="heading"></h3>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Clothing</a></li>
					<li><a href="#">Jwellery</a></li>
					<li><a href="#">Music</a></li>
					<li><a href="#">Caterer</a></li>
					<li><a href="#">Photography</a></li>
					
				</ul>
			</div>
			</div>
		</div>
	</div>
	<header id="fh5co-header">
		
		<div class="container-fluid">

			<div class="row">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
				<!--  <ul class="fh5co-social">
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
				</ul>
				<div class="col-lg-12 col-md-12 text-center">
					<h1 id="fh5co-logo"><a href="#">Decoration <sup>TM</sup></a></h1>
				</div>

			</div>
		
		</div>

	</header>
-->
	<!-- END #fh5co-header -->
	<div class="container-fluid">
		<div class="row fh5co-post-entry">
			<!--<c:forEach var="deco" items="${products}">
                <tr>
                    <td><c:out value="${deco.did}" /></td>
                    <td><c:out value="${deco.title}" /></td>
                    <td><c:out value="${deco.price}" /></td>
                   <td><img src="${deco.img}"/></td>
                        
                </tr>
            </c:forEach>-->
			<div class="tab">
  <button class="tablinks" onclick="openCity(event,'Bangles')" id="defaultOpen">Bangles</button>
  <button class="tablinks" onclick="openCity(event,'Necklace')">Necklace</button>
  <button class="tablinks" onclick="openCity(event,'Earings')" >Earings</button>
  <button class="tablinks" onclick="openCity(event,'Others')" >Others</button>

</div>

<div id="Bangles" class="tabcontent">
  <h3>Bangles</h3>
<div class="container-fluid">
				<div class="row fh5co-post-entry">
			<c:forEach var="j" items="${jewellery}">
			<c:set var="type" value="${j.type}"/>
			
  				<c:if test="${type eq 'Bangles'}">
							<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="#"><img src="${j.img}"  class="img-responsive"></a>
						</figure>
				<table>
					<tr>
                    <td><c:out value="${j.name}" /></td></tr>
                    <tr>
                    <br>
                    <td><em>Price:</em><c:out value="${j.price}" /></td>
                    				
                    
                    </tr>
                    </table>
				<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${j.name}">
				
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${j.price}">
				<input type="hidden" name="category" value="Jewellery">
								<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
			</article>
			
			</c:if>
			  </c:forEach>
			  </div>
		</div>
	</div>

</div>

<div id="Earings" class="tabcontent">
  <h3>Earings</h3>
  <div class="container-fluid">
				<div class="row fh5co-post-entry">

			<c:forEach var="j" items="${jewellery}">
			<c:set var="type" value="${j.type}"/>
			
  				<c:if test="${type eq 'Earrings'}">
							<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="#"><img src="${j.img}"  class="img-responsive"></a>
						</figure>
				<table>
					<tr>
                    <td><c:out value="${j.name}" /></td></tr>
                    <tr>
                    <br>
                    <td><em>Price:</em><c:out value="${j.price}" /></td>
                    </tr>
                    </table>
				<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${j.name}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${j.price}">
				<input type="hidden" name="category" value="Jewellery">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
			</article>
			
			</c:if>
			  </c:forEach>
			  </div>
		</div>
	</div>
  
</div>

<div id="Necklace" class="tabcontent">
  <h3>Necklace</h3>
  
   <div class="container-fluid">
				<div class="row fh5co-post-entry">

			<c:forEach var="j" items="${jewellery}">
			<c:set var="type" value="${j.type}"/>
			
  				<c:if test="${type eq 'Necklace'}">
							<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="#"><img src="${j.img}"  class="img-responsive"></a>
						</figure>
				<table>
					<tr>
                    <td><c:out value="${j.name}" /></td></tr>
                    <tr>
                    <br>
                    <td><em>Price:</em><c:out value="${j.price}" /></td>
                    </tr>
                    </table>
				<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${j.name}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${j.price}">
				<input type="hidden" name="category" value="Jewellery">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
			</article>
			
			</c:if>
			  </c:forEach>
			  </div>
		</div>
	</div>
</div>


<div id="Others" class="tabcontent">
  <h3>Others</h3>
  
   <div class="container-fluid">
				<div class="row fh5co-post-entry">

			<c:forEach var="j" items="${jewellery}">
			<c:set var="type" value="${j.type}"/>
			
  				<c:if test="${type eq 'Others'}">
							<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="#"><img src="${j.img}"  class="img-responsive"></a>
						</figure>
				<table>
					<tr>
                    <td><c:out value="${j.name}" /></td></tr>
                    <tr>
                    <br>
                    <td><em>Price:</em><c:out value="${j.price}" /></td>
                    </tr>
                    </table>
				<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${j.name}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${j.price}">
				<input type="hidden" name="category" value="Jewellery">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
			</article>
			
			</c:if>
			  </c:forEach>
			  </div>
		</div>
	</div>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
 // Get the element with id="defaultOpen" and click on it
}
document.getElementById("defaultOpen").click();

</script>
		<!--  	<div class="container-fluid">
			<c:forEach var="deco" items="${products}">
			
                   <span class="fh5co-meta"><a href="single.html"></a></span>
                
          
		<div class="row fh5co-post-entry">
			<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
				<figure>
					<a href="#"><img src="${deco.img}"  class="img-responsive"></a>
				</figure>
					<tr>
                    <td><c:out value="${deco.title}" /></td></tr>
                    <tr>
                    <br>
                    <td><em>Price:</em><c:out value="${deco.price}" /></td>
                    </tr>
                    </table>
				<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${deco.title}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${deco.price}">
				<input type="hidden" name="category" value="Decoration">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
				<span class="fh5co-meta fh5co-date"></span>
			</article>
			  </c:forEach>
			<div class="clearfix visible-xs-block"></div>
		</div>
	</div>
-->
	
	<!-- jQuery -->
	<script src="cssd/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="cssd/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="cssd/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="cssd/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="cssd/main.js"></script>
</body>
</html>