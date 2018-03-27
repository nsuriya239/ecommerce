<%@page import="com.EC.DAO.AdddeliverydetDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delivery Details</title>
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
<jsp:include page="Header.jsp"></jsp:include>
<% 
if(session.getAttribute("name")==null||session.getAttribute("name")=="")
{
response.sendRedirect("Login.jsp?from=" + request.getRequestURI());
}
else
{
	
%>
<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>Delivery Details</h3>
				<p>Please Enter your Delivery Details</p>
				 <form method="POST" action="Adddeliverydet" >
					<ul>
						<li class="text-info">Deliver to: </li>
						<li><input type="text" value="" id="pname" name="name" required="required"></li>
					</ul>				 
					<ul>
						<li class="text-info">Address line 1:</li>
						<li><input type="text" value="" id="pprice" name="add1" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Address line 2:</li>
						<li><input type="text" value="" id="pprice" name="add2" ></li>
					</ul>
					
					<ul>
						<li class="text-info">City :</li>
						<li><input type="text" value="" name="city" id="city" required="required" "></li>
					</ul>
					<ul>
						<li class="text-info">Mbl No :</li>
						<li><input type="text" value="" name="mbl" id="mblno" required="required" "></li>
					</ul>
					<ul>
						<li class="text-info">State :</li>
						<li><input type="text"" name="state" id="state" required="required" ></li>
					</ul>				
					<ul>
						<li class="text-info">Pincode:</li>
						<li><input type="text"" name="dpin" id="dpin" required="required" ></li>
					</ul>
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
<%
}
%>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>