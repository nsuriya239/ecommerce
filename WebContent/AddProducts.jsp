<%@page import="com.EC.jsp.DAO.AddProdDAOj"%>
<%@page import="com.EC.bean.scat"%>
<%@page import="com.EC.bean.categories"%>
<%@page import="com.EC.jsp.DAO.AddProdDAOj"%>
<%@page import="com.EC.bean.catalog"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
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
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="Login.jsp">LOGIN</a></li>
                    <li class="active">REGISTER</li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
        <%
        if(session.getAttribute("name")==null||session.getAttribute("name")=="")
        {
        	out.println("<script type=\"text/javascript\">");
       	    out.println("alert('PLEASE LOGIN');");
       	    out.println("location='Adminlogin.jsp';");
       	    out.println("</script>");
        }
        else
        {
        if(session.getAttribute("Type")=="seller"||session.getAttribute("Type")=="admin")
        {
        %>
	<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>Add Products</h3>
				<p>Welcome, please enter the following details to continue.</p>
				<p>If you have previously registered with us, <a href="Login.jsp">click here</a></p>
				 <form method="POST" action="AddProducts" enctype="multipart/form-data">
					<ul>
						<li class="text-info">Product Name: </li>
						<li><input type="text" value="" id="pname" name="pname" required="required"></li>
					</ul>				 
					<ul>
						<li class="text-info">Product Description :</li>
						<li><textarea rows="5" cols="60" id="pdesc" name="pdesc"placeholder="Enter Product Description" required="required"></textarea></li>
					</ul>
					<ul>
						<li class="text-info">Product Image :</li>
						<li><input type="file" value="" id="pimg" name="pimg" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Product Price:</li>
						<li><input type="text" value="" id="pprice" name="pprice" required="required"></li>
					</ul>
					<ul>
						<li class="text-info">Product Country:</li>
						<li><%	
 									ArrayList<catalog> ac=AddProdDAOj.country();
 									%>
 									<select name="pcoun" required="required">
 									<option value="">select a country</option>
 									<% 
									for(catalog c:ac)
									{
									%>
									  <option value="<%=c.getCoun_id() %>"><%=c.getCountry() %></option>
									<%
 									}
									%>
									</select>
									</li>
					</ul>
					<ul>
						<li class="text-info">Product Category:</li>
<!-- 						<input type="text" value="" name="pcat" required="required"> -->
							<li>
							<%
							ArrayList<categories> acat=AddProdDAOj.categories();								
								%>
								<select id="dropcat" name="dropcat"  required="required">
								 <option value="" selected="selected">Choose here</option>
								<% 
								for(categories c:acat)
								{
									%>
								<option value="<%= c.getCat_name()%>">
									<%= c.getCat_name() %> 
 									</option> 	
							<%
								}
							%>
							</select>	</li>
					</ul>
					<ul>
						<li class="text-info">Product SubCategory:</li>
						<li>
						<%
							ArrayList<scat> as=AddProdDAOj.subcategories();
								%>
								<select id="dropscat" name="dropscat" required="required">
								 <option value="" selected="selected">Choose here</option>
								<% 
								for(scat s:as)
								{
								%>
								<option value="<%=s.getScat_name() %>"><%= s.getScat_name() %> </option> 	
							<%
								}
							%>
							</select>	</li>
					</ul>
					<ul>
						<li class="text-info">Product Seller Name:</li>
						<li><input type="text"  name="psname" id="psname" required="required" value="<%=(String)session.getAttribute("name") %>"></li>
					</ul>
					<ul>
						<li class="text-info">Product Quantity:</li>
						<li><input type="text"" name="pqty" id="pqty" required="required" ></li>
					</ul>				
					
					<input type="submit" value="Add Product">
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
        }
	%>
	
<jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>