<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
    
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Work+Sans:400,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/icons.css"/>
<link rel="stylesheet" type="text/css" href="css/slider.css"/>
<link rel="stylesheet" type="text/css" href="css/skinblue.css"/><!-- change skin color -->
<link rel="stylesheet" type="text/css" href="css/responsive.css"/>
<link rel="stylesheet" href="cssnew/slider.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="cssnew/style.css"> <!-- Resource style -->
	<link rel="stylesheet" href="clothccss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="clothcss/style.css"> <!-- Resource style -->
	
	<title>Clothing</title>
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
	
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Bride')" id="defaultOpen" >Bride</button>
  <button class="tablinks" onclick="openCity(event, 'Groom')">Groom</button>
</div>



<div id="Groom" class="tabcontent">
  <h3>Groom</h3>
    
  
 <ul class="cd-gallery">
  <c:forEach var="g" items="${groom}">
      <c:set var="type" value="${g.type}"/>
			
		<li>
			<div class="cd-single-item">
				<a href="#0">
					<img src="${g.img}" alt="Preview image">
					
				</a>
				<h5><c:out value="${g.name}"/></h5>
				

			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product Name</a></b>
				<em><c:out value="${g.price}" /></em>
			</div> <!-- cd-item-info -->
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${g.name}">
				
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${d.price}">
				<input type="hidden" name="category" value="Clothing">
								<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
		</li>

		
	 <!-- cd-gallery -->
 
  </c:forEach>
  </ul>
  </div>
  
	  
 
 

<div id="Bride" class="tabcontent">
  <h3>Bride</h3>
  
 <ul class="cd-gallery">
  <c:forEach var="g" items="${bride}">
      <c:set var="type" value="${g.type}"/>
			
		<li>
			<div class="cd-single-item">
				<a href="#0">
					<img src="${g.img}" alt="Preview image">
					
				</a>
				<h5><c:out value="${g.name}"/></h5>
				

			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product Name</a></b>
				<em><c:out value="${g.price}" /></em>
			</div> <!-- cd-item-info -->
			<form action="CartController11" method="post">
				<input type="hidden" name="description" value="${g.name}">
				
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${g.price}">
				<input type="hidden" name="category" value="Clothing">
								<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Add to Cart"> </form>
		</li>

		
	 <!-- cd-gallery -->
 
  </c:forEach>
  </ul>
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
}
    document.getElementById("defaultOpen").click();
    

</script>

</body>
</html>