<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Venue</title>
  	<link rel="stylesheet" type="text/css" href="css/style.css"/>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/stylevenue.css">
      <link rel="stylesheet" href="cssnew/style.css">
            <link rel="stylesheet" href="cssnew/slider.css">
      

  
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
  		<h1>Venue</h1>	
  
</header>
<h1> Only Available Venues Are Shown!</h1>
<div class="shopping-cart">

  <div class="column-labels">
    <label class="product-image">Image</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>

    <label class="product-removal">Remove</label>

  </div>
  			<c:forEach var="ven" items="${venue}">

  <div class="product">
  
    <div class="product-image">
      <img src="${ven.image1}">
    </div>
    <div class="product-details">
      <div class="product-title">${ven.nameofvenue}</div>
      <p class="product-description">${ven.address}</p>
    </div>
    <div class="product-price">${ven.price}</div>
    
    <div class="product-removal">
     <form action="CartController11" method="post">
				<input type="hidden" name="description" value="${ven.nameofvenue}">
				<input type="hidden" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${ven.price}">
				<input type="hidden" name="category" value="Venue">
												<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Book"> </form>
    </div>
    
    </div>
            </c:forEach>
    
    </div>


</body>
</html>