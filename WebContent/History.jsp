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
<link rel="stylesheet" href="cssnew/style.css">
<link rel="stylesheet" href="cssnew/slider.css">
    <!-- Bootstrap Core CSS -->
    <link href="shopcss/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="shopcss/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="shopcss/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="shopcss/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="shopcss/font-awesome.min.css" rel="stylesheet" type="text/css">

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
	response.sendRedirect("login.jsp");
	session.setAttribute("error","Please Login First");
	session.setAttribute("requ","shopcart.jsp");
	}
	%>
	<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="img/images1.png" alt=""></a></h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li class="current"><a href="index.html">Home</a></li>
         
            <li><a href="ShoppingCart.jsp"><img alt="" src="img/cart1.png" height="50px" width="50px"></a>
          </li></ul>
        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>
    <div id="wrapper">

        <!-- Navigation -->
        

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i> History</a>
                        </li>
                        
                        </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
           
            <!-- /.row -->
           
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Shopping Cart
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
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
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
 
  
  <c:forEach var="cartItem" items="${history}" varStatus="counter">
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
                                <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                <span class="input-group-btn">
                                    <button class="btn btn-warning btn-sm" id="btn-chat">
                                        Send
                                    </button>
                                </span>
                            </div>
                        </div>
                        <!-- /.panel-footer -->
                    </div>
                    <!-- /.panel .chat-panel -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="shopcss/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="shopcss/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="shopcss/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="shopcss/raphael.min.js"></script>
    <script src="/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="shopcss/sb-admin-2.js"></script>

</body>

</html>