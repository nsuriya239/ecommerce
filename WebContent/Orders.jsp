<%@page import="com.EC.jsp.DAO.OrderDAOj"%>
<%@page import="com.EC.bean.products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Orders</title>
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
  //System.out.println(session +" "+session.getValue("name"));
	if(session.getAttribute("name")==null||session.getAttribute("name")=="")
		{
		response.sendRedirect("Login.jsp?from=" + request.getRequestURI());
		}
	else
	{
		String uname=(String)session.getAttribute("name");

		int size=0;
		String imgDataBase64="";
		double price=0.0;
		Blob img=null;
		byte[] imgarr=null;

		ArrayList<products> ap=OrderDAOj.selectorder(uname);
%>

 <!-- check-out -->
             <div class="check">
                <div class="container">
                    <div class="col-md-9 cart-items">
                        <h1>My Shopping Bag (<%= ap.size() %>)</h1>
                           <%
                           for(products p:ap)
                           {
                        	   img=p.getP_image();
                                        	size=(int)img.length();
                                          	 imgarr=img.getBytes(1,size);
                                          	 imgDataBase64=new String(Base64.getEncoder().encode(imgarr));
                           
                           %>
                        <div class="cart-header">
                            <div class="cart-sec simpleCart_shelfItem">
                                    <div class="cart-item cyc">
                                       <a href="Single.jsp?id=<%=p.getPid() %>" ><img src="data:image/gif;base64,<%= imgDataBase64%>" class="img-responsive" alt=""/></a>
                                    </div>
                                   <div class="cart-item-info">
                                   <ul><h3><%= p.getName()%></h3></ul><br>
                                        <ul class="qty">
                                        	<li><p>Order Id:<%=p.getOid() %></p></li>
                                            <li><p>Size : <%=p.getP_size() %> US</p></li>
                                            <li><p>Qty : <%=p.getP_quantity() %></p></li>
                                            <li><p>Price each : &#8377;<%=p.getP_price() %></p></li><br><br>
                                            <li><h4>Total:&#8377;<%=p.getP_price()*p.getP_quantity() %></h4></li>
                                            <li><h4>Status:<%=p.getStatus()%></h4></li>
                                        </ul>
                                   </div>
                                   <div class="clearfix"></div>

                              </div>
                         </div>
                        <%         }			%>
                </div>
               	 
                    <div class="col-md-3 cart-total">
                       
                        <div class="price-details">
                        
                        <div class="clearfix"></div>
                       				 
                        </div>
                        
                        <div class="clearfix"></div>
                    </div>
            </div>
<%
		}
%>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>