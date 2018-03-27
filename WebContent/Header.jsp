<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- 		<meta charset utf="8"> -->
		<!--fonts-->
		<link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
		
		<!--fonts-->
		<!--bootstrap-->
			 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!--coustom css-->
			<link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--shop-kart-js-->
        <script src="js/simpleCart.min.js"></script>
		<!--default-js-->
			<script src="js/jquery-2.1.4.min.js"></script>
		<!--bootstrap-js-->
			<script src="js/bootstrap.min.js"></script>
		<!--script-->
</head>
<body>
 <div class="header">
            <div class="container">
                <div class="header-top">
                    <div class="logo">
                        <a href="Home.jsp">N-AIR</a>
                    </div>
                    <div class="login-bars">
                    <%
                    String uname="";
                    String utype="";
                    if((session.getAttribute("name")==null)||(session.getAttribute("name")==""))
                    {
                    	String from=request.getRequestURI();
                    	if(request.getQueryString()!=null)
                    	{
                    		from+="?"+request.getQueryString();
                    	}
                    	%>
                    	<a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
                        <a class="btn btn-default log-bar" href="Login.jsp?from=<%=from %>" role="button">Login</a>
                    	 <a class="btn btn-default log-bar" href="Adminlogin.jsp" role="button">Admin</a>
                        <%
                    }
                    else
                    {
                    	uname=(String)session.getValue("name");
                    	utype=(String)session.getValue("Type");
                    %>
                    <a class="btn btn-default log-bar" href="#" role="button">Welcome <%= uname%></a>
                    <a class="btn btn-default log-bar" href="Orders.jsp" role="button">My Orders</a>
                        <a class="btn btn-default log-bar" href="Logout.jsp" role="button">Logout</a>
                        
                        <%
                        }
                        %>
                        <% 
                        	if(utype.equals(new String("admin")))
                        	{
                        %>
                        <a class="btn btn-default log-bar" href="Adminregister.jsp" role="button">Add Sellers</a>
                        <%
                        }
                        	else if (utype.equals(new String("seller")))
                        	{
                        %>
                        <a class="btn btn-default log-bar" href="AddProducts.jsp" role="button">Add Products</a>
                        <%
                        }
                        %>
                        <div class="cart box_1">
                            <a href="checkout.jsp">
                             <h3>
                                <div class="total">
                            </a>
                            <p><a href="checkout.jsp" class="simpleCart_empty">&#128722; Cart</a></p>
                            <div class="clearfix"> </div>
                        </div>	
                    </div>
        <div class="clearfix"></div>
                </div>
                <!---menu-----bar--->
                <div class="header-botom">
                    <div class="content white">
                    <nav class="navbar navbar-default nav-menu" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="clearfix"></div>
                        <!--/.navbar-header-->

                        <div class="collapse navbar-collapse collapse-pdng" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav nav-font">
                                
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men<b class="caret"></b></a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="row">
                                            <div class="col-sm-4 menu-img-pad">
                                                <ul class="multi-column-dropdown">
                                                    <li><a href="PLP.jsp?cat_name=Men&scat=Casual">Casuals</a></li>
                                                    <li><a href="PLP.jsp?cat_name=Men&scat=Formal">Formals</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 menu-img-pad">
                        <a href="#"><img src="images/menu1.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                            </div>
                                            <div class="col-sm-4 menu-img-pad">
                        <a href="#"><img src="images/menu2.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                            </div>
                                        </div>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
                                    <ul class="dropdown-menu multi-column columns-2">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <ul class="multi-column-dropdown">
                                                    <li><a href="PLP.jsp?cat_name=Women&scat=Casual">Casuals</a></li>
                                                    <li><a href="PLP.jsp?cat_name=Women&scat=Formal">Formals</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-6">
                        <a href="#"><img src="images/menu3.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                            </div>
                                        </div>
                                    </ul>
                                </li>
                                
                                <li><a href="contact.html">Catch</a></li>
                                <div class="clearfix"></div>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!--/.navbar-collapse-->
                        <div class="clearfix"></div>
                    </nav>
                    <!--/.navbar-->   
                        <div class="clearfix"></div>
                    </div>
                    <!--/.content--->
                </div>
                    <!--header-bottom-->
            </div>
        </div>
       

</body>
</html>