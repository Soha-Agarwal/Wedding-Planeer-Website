<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Visions</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="cssnew/style.css"/>
<link rel="stylesheet" href="cssnew/slider.css"/>
<link rel="stylesheet" type="text/css" href="stylebeauty.css" />
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
<div>
<h1> <b><p style="font-size:150%;"> Beauticians </p></b></h1>
</div>
  <div id="content">
	  <c:forEach var="beauty" items="${beautician}">
    <div class="post"> <img src="${beauty.image}" width="209" height="209" class="image_post" alt="" />
      <div class="heading_box">
       
      </div>
     <h2> <p>Package Name:<c:out value="${beauty.packagename}" /> </p></h2>
	  <h2><p>Description: &nbsp</p></h2>
	 <ul>
	  <li><h3><c:out value="${beauty.type1}"></c:out></h3></li>
	  	  <li><h3><c:out value="${beauty.type2}"></c:out></h3></li>
	  	  <li><h3><c:out value="${beauty.type3}"></c:out></h3></li>
	  	  <li><h3><c:out value="${beauty.type4}"></c:out></h3></li>
	  	  <li><h3><c:out value="${beauty.type5}"></c:out></h3></li>
	  <form action="CartController11" method="post">
				<input type="hidden" name="description" value="${beauty.packagename}">
				
				<input type="hidden" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${beauty.total_price}">
				<input type="hidden" name="category" value="Beautician">
								<input type="hidden" name="email" value="${sessionScope.email}">
				
				<input type="submit" name="addtocart" value="Book"> </form>
	  </ul>
	<h2><p>Price:&nbsp<c:out value="${beauty.total_price}"></c:out></h2>
     
    </div>
    </c:forEach>
  
  <div id="rss"><a href="#"><img src="images/rss.png" width="28" height="29" alt="" /></a></div>
</div>
</div>
<div id="footer">Created by: <small><a href="http://www.csstemplateheaven.com">CssTemplateHeaven</a></small></div>
</body>
</html>