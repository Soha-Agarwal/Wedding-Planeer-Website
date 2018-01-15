<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Shopping Cart</title>

<!-- Bootstrap Core CSS -->
<link href="shopcss/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="shopcss/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="shopcss/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="shopcss/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="shopcss/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="cssnew/style.css">
<link rel="stylesheet" href="cssnew/slider.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<% if (session.getAttribute("email")==null)
	{
	session.setAttribute("requ1","ShoppingCart.jsp");
	response.sendRedirect("login.jsp");
	//session.setAttribute("error","Please Login First");
	
	}
	%>
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.html"><img src="img/images1.png" alt=""></a>
				</h1>
				<div class="menu_block">
					<nav>
						<ul class="sf-menu">
							<li class="current"><a href="index.html">Home</a></li>

							<li><a href="ShoppingCart.jsp"><img alt=""
									src="img/cart1.png" height="50px" width="50px"></a></li>
						</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</header>
	<div id="wrapper">

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li>
					<form action="CartHistory">
						<input type=submit value="History" name="action">
					</form>
					</li>

				</ul>
			</div>

		</div>

		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Dashboard</h1>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					Shopping Cart
					<div class="pull-right">
						<div class="btn-group">
							<button type="button"
								class="btn btn-default btn-xs dropdown-toggle"
								data-toggle="dropdown">

								<span class="caret"></span>
							</button>

						</div>
					</div>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4">
							<div class="table-responsive">
								<table class="table table-bordered table-hover table-striped">
									<tr bgcolor="#CCCCCC">
									<td><strong><font size="2"
												face="Verdana, Arial, Helvetica, sans-serif">Description</font></strong></td>
										<td><strong><font size="2"
												face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
										<td><strong><font size="2"
												face="Verdana, Arial, Helvetica, sans-serif">Unit
													Price</font></strong></td>
										<td><strong><font size="2"
												face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
									</tr>
									<jsp:useBean id="cart" scope="session"
										class="shoppingcart.CartBean" />
									<c:if test="${cart.lineItemCount==0}">
										<tr>
											<td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
										</tr>
									</c:if>

									<c:forEach var="cartItem" items="${cart.cartItems}"
										varStatus="counter">
										<tr>
										<form name="item" method="POST" action="CartController11">
											<!--  <input type='hidden' name='email' value='<c:out value="${email}"/>'>-->

											
												<td><c:out value="${cartItem.modelDescription}" /></font></td>
												<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
												<input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
												<input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'>
												<input type="submit" name="action" value="Update">
												<br> <input type="submit" name="action" value="Delete"></font></td>
												<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rs<c:out value="${cartItem.unitCost}" /></font></td>
												<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rs<c:out value="${cartItem.totalCost}" /></font></td>
											</tr>
										</form>
									</c:forEach>

									<tr>
										<td>Grand Total</td>
										<td><c:out value="${cart.dblOrderTotal}"></c:out></td>
										<td><form class="nav navbar-nav" action="LastPayment"
												method="post">
												<input type="submit" value="Buy" name="action">
											</form></td>
									</tr>

								</table>
								<form class="nav navbar-nav" action="CartController11"
									method="post">
									<input type="submit" value="Logout" name="action">
								</form>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.col-lg-4 (nested) -->



					</div>
				</div>
				<!-- /.panel-heading -->

				<!-- /.panel-body -->
				<div class="panel-footer">
					<div class="input-group">
						<span class="input-group-btn"> </span>
					</div>
				</div>
				<!-- /.panel-footer -->
			</div>
			<!-- /.panel .chat-panel -->
		</div>
	</div>
	</div>
	
	</div>

	<!--  <script src="shopcss/jquery.min.js"></script>

	<script src="shopcss/bootstrap.min.js"></script>

	<script src="shopcss/metisMenu.min.js"></script>

	<script src="shopcss/raphael.min.js"></script>
	<script src="/morris.min.js"></script>
	<script src="../data/morris-data.js"></script>

	<script src="shopcss/sb-admin-2.js"></script>-->

</body>

</html>