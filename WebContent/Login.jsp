<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>N-Air a E-commerce category Flat Bootstrap Responsive
	Website Template | Checkout :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta charset utf="8">
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Fredoka+One'
	rel='stylesheet' type='text/css'>

<!--fonts-->
<!--bootstrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!--shop-kart-js-->
<script src="js/simpleCart.min.js"></script>
<!--default-js-->
<script src="js/jquery-2.1.4.min.js"></script>
<!--bootstrap-js-->
<script src="js/bootstrap.min.js"></script>
<!--script-->
<!-- FlexSlider -->
<script src="js/imagezoom.js"></script>
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />

<script>
            // Can also be used with $(document).ready()
            $(window).load(function() {
              $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
              });
            });
            </script>
<!-- //FlexSlider-->
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">HOME</a></li>
				<li class="active">LOGIN</li>
			</ol>
		</div>
	</div>
	<!--signup-->
	<!-- login-page -->
	<div class="login">
		<div class="container">
			<div class="login-grids">
				<div class="col-md-6 log">
					<h3>Login</h3>
					<div class="strip"></div>
					<p>Welcome, please enter the following to continue.</p>
					<p>
						If you have previously Login with us, <a href="#">Click Here</a>
					</p>
					<form method="POST" action="LoginServ">
					<input type="hidden" name="from" value="<%=request.getParameter("from") %>" />
					<input type="hidden" name="pid" value="<%=request.getParameter("pid") %>"/>
						<h5>User Name:</h5>
						<input type="text" value="" name="uname" required="required">
						<h5>Password:</h5>
						<input type="password" value="" name="pwd" required="required"><br> <input
							type="submit" value="Login">

					</form>
					<a href="#">Forgot Password ?</a>
				</div>
				<div class="col-md-6 login-right">
					<h3>New Registration</h3>
					<div class="strip"></div>
					<p>By creating an account with our store, you will be able to
						move through the checkout process faster, store multiple shipping
						addresses, view and track your orders in your account and more.</p>
					<a href="register.jsp" class="button">Create An Account</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //login-page -->
	<!--signup-->
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>