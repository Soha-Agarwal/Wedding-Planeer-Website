<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>InvitationCards</title>

    <!-- Bootstrap core CSS -->
    <link href="cssi/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="cssi/shop-homepage.css" rel="stylesheet">
     <link href="cssnew/slider.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="cssnew/style.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
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

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Choose Your Card</h1>
          

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="img/formatcard.jpg" alt="First slide">
              </div>
              
          </div>

          <div class="row">
<c:forEach var="card" items="${cards}">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
               <a href="#"><img class="card-img-top" src="${card.image}" alt="notavl"></a>
     <div class="card-body">
                  <h4 class="card-title">
                    Template No:&nbsp<c:out value="${card.template_id}"/>
                  </h4>
                  <h5>Price:&nbsp<c:out value="${card.price}"/></h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
                <form action="CartController11" method="post">
				<input type="hidden" name="description" value="${card.template_id}">
				<input type="text" size="2" value="1" name="quantity">
				<input type="hidden" name="action" value="add">
				<input type="hidden" name="price" value="${card.price}">
				<input type="hidden" name="category" value="InvitationCards">
			<input type="hidden" name="email" value="${sessionScope.email}">
								<input type="submit" name="addtocart" value="Add to Cart"> </form>
				
                </div>
              </div>

</c:forEach>            </div>

           
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
           
          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white"></p>
      </div>
      <!-- /.container -->
    </footer>


   
  </body>

</html>