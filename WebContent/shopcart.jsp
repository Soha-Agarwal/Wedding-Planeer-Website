<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shopping Cart</title>

        <!-- Bootstrap -->
        <link href="bootstrap-min1.css" rel="stylesheet">

        <link href="shopcart.css" rel="stylesheet">

        


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="jquery-1.11.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap-min.js"></script>
    </head>
    <body>
	<% if (session.getAttribute("email")==null)
	{
	response.sendRedirect("login.jsp");
	session.setAttribute("error","Please Login First");
	session.setAttribute("requ","ShoppingCart.jsp");
	}
	%>
        <nav id="header" class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                  
                  <a class="navbar-brand" href="/"> <span>Shopping Cart</span></a>
                                  <a class="navbar-brand" href="/"> <span>Home</span></a>
                
                </div>

                <div id="header-menu" class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                  
                    
                   
                  
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div id="middle" class="container-full">
            <div class="row">
                <div id="navigation" class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                    <div class="top-menu">
                        <div class="top-menu-mobile-row">
                            <div class="top-menu-item">
                                <a class="main-category" href="#">Welcome&nbsp</a>
                                <br>${email}
                               <!--  <ul>
                                    <li>
                                        <a class="sub-item">Sub item 1</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 2</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 3</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 4</a>
                                    </li>
                                </ul>-->
                            </div>
                            <div class="top-menu-item">
                                <a class="main-category" href="#">History</a>
                                <ul>
                                    <li>
                                        <a class="sub-item">Sub item 1</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 2</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 3</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="top-menu-mobile-row">
                            <div class="top-menu-item">
                                <a class="main-category" href="#">Profile</a>
                                <ul>
                                    <li>
                                        <a class="sub-item">Sub item 1</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 2</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 3</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="top-menu-item">
                                <a class="main-category" href="#">Info</a>
                                <ul>
                                    <li>
                                        <a class="sub-item">Sub item 1</a>
                                    </li>
                                    <li>
                                        <a class="sub-item">Sub item 2</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="main-container" class="col-xs-12 col-sm-8 col-md-7 col-lg-7">
                    <h1>Shopping Cart</h1>

                    <div id="shopping-cart">
                        <div class="cart-item">

                            <div class="basic-elements-container">
<table width="75%" border="1">
  <tr bgcolor="#CCCCCC">
    <div class="control-panel">
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
  <jsp:useBean id="cart" scope="session" class="shoppingcart.CartBean" />
  <c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="CartController11">
  		<!--  <input type='hidden' name='email' value='<c:out value="${email}"/>'>-->
  
<tr>
      <td><c:out value="${cartItem.modelDescription}"/></font></td>	
      
      
<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">  
<br/>         <input type="submit" name="action" value="Delete"></font></td>
 <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  </form>
  </c:forEach>
  <tr>  
              
              </tr>   
              
            </table>
              <form class="nav navbar-nav"action="CartController11" method="post">
  <input type="submit" value="Logout" name="action">
  </form>           </div>
                            
                              <!--  <div class="item-price">10 $</div>
                                <div class="item-quantity">x1</div>
                                <div class="quantity-controls"><img src="images/quantity-controls-mock.ico"/></div>
                                <div class="remove-link"><img src="images/remove-link.png"/></div>
                            </div>
                            <div class="mobile-menu-container"></div>
                        </div>
                       
                    <div id="cart-bottom-panel">
                        <div class="total">
                            <span>Total: 1543 $</span>
                        </div>
                        <div class="buttons-panel">
                            <div class="button-column">
                                <a class="btn btn-success btn-lg button-pay" href="">Pay</a>
                            </div>
                            <div class="button-column">
                                <a class="btn btn-danger btn-lg button-cancel" href="">Cancel</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                        
                    
                
            </div>
        </div>
        <div id="footer" class="container-fluid">
            <p id="footer-a-block">
                Left block of the footer text
            </p>
            <p id="footer-b-block">
                Right block of the footer text
            </p>-->
            
            </div>
            </div>
            </div>
            </div>
            </div>
         
        </div>
    </body>
</html>

   
