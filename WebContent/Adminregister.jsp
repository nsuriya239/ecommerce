<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<meta charset utf="8">
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
         <!-- FlexSlider -->
            <script src="js/imagezoom.js"></script>
              <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

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
 <% 
 //PrintWriter outwrite=response.getWriter();
 if(session.getAttribute("Type")=="admin")
 {
 %>
        <!-- reg-form -->
	<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>Seller Register Now</h3>
				<p>Welcome, please enter the following details to continue.</p>
				<p>If you have previously registered with us, <a href="Login.jsp">click here</a></p>
				 <form method="POST" action="AdminSignupServ">
					<ul>
						<li class="text-info">First Name: </li>
						<li><input type="text" value="" name="ufname" required="required"></li>
					</ul>				 
					<ul>
						<li class="text-info">Email: </li>
						<li><input type="text" value="" name="uname" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Password: </li>
						<li><input type="password" value="" name="pwd" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Re-enter Password:</li>
						<li><input type="password" value="" name="rpwd" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Mobile Number:</li>
						<li><input type="text" value="" name="mbl" required="required"></li>
					</ul>						
					<input type="submit" value="Register Now">
					<p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p> 
				</form>
			</div>
		</div>
	</div>
	<% 
 }
 else
 {
	 out.println("<script type=\"text/javascript\">");
	    out.println("alert('ACCESS DENIED REDIRECTING TO HOME PAGE');");
	    out.println("location='Home.jsp';");
	    out.println("</script>");
 }
	%>
  <jsp:include page="Footer.jsp"></jsp:include>
      </body>
</html>