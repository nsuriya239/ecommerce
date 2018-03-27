<%@page import="com.EC.jsp.DAO.orderConfDAOj"%>
<%@page import="com.EC.jsp.DAO.deleteDAOj"%>
<%@page import="com.EC.bean.delivery_det"%>
<%@page import="com.EC.jsp.DAO.checkoutDAOj"%>
<%@page import="com.EC.bean.products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>N-AIR Checkout</title>
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
		
		double totalamt=0.0;
		double deli=100.0;
		double price=0.0;
		int size=0;
		int qty=0;
		Blob img=null;
		byte[] imgarr=null;
		String imgDataBase64="";
		
		ArrayList<products> ap=orderConfDAOj.selectOrder(uname);
%>

 <!-- check-out -->
             <div class="check">
                <div class="container">
                    <div class="col-md-9 cart-items">
                        <h1>My Shopping Bag (<%= ap.size() %>)</h1>
                           
                           <%
                           for(products p:ap)
							{
								price=p.getP_price();
								qty=p.getP_quantity();
										img=p.getP_image();
                                   	size=(int)img.length();
                                     	 imgarr=img.getBytes(1,size);
                                     	 imgDataBase64=new String(Base64.getEncoder().encode(imgarr));
                      
                           %>
                        <div class="cart-header">
                <div class="close1"><a href="delete.jsp?pid=<%= p.getPid()%>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></a></span></div>
                            <div class="cart-sec simpleCart_shelfItem">
                                    <div class="cart-item cyc">
                                       <a href="Single.jsp?id=<%=p.getPid() %>" > <img src="data:image/gif;base64,<%= imgDataBase64%>" class="img-responsive" alt=""/></a>
                                    </div>
                                   <div class="cart-item-info">
                                   <ul><h3><%=p.getName() %></h3></ul>
                                        <ul class="qty">
                                            <li><p>Size : <%=p.getP_size() %> US</p></li>
                                            <li><p>Qty : <%=p.getP_quantity() %></p></li>
                                            <li><p>Price each : &#8377;<%=price %></p></li>
                                            <li><h4>Total:&#8377;<%=price*qty+deli %></h4></li>
                                        </ul>
                                        <div class="delivery">
                                             <p>Service Charges : &#8377;.<%=deli %></p>
                                             <span>Delivered in 2-3 bussiness days</span>
                                             <div class="clearfix"></div>
                                        </div>	
                                   </div>
                                   <div class="clearfix"></div>

                              </div>
                         </div>
      <%
      totalamt+=price*qty+deli;
      }
        %>
                </div>
               	 
                    <div class="col-md-3 cart-total">
                       
                        <div class="price-details">
                        
                        <div class="clearfix"></div>
                        <a class="order" href="Home.jsp">Continue Shopping</a>
                        <%delivery_det dd=orderConfDAOj.getDelivDet(uname); %>
                            <h3>Delivery Details</h3>
                            <span>Name</span>
                            <span class="total1"><%=dd.getName() %></span>
                            <span>Address</span>
                            <span class="total1"><%=dd.getAddress1()+" "+dd.getAddress2() %></span>
                            <span>City</span>
                            <span class="total1"><%= dd.getCity()%></span>
                             <span>State</span>
                            <span class="total1"><%=dd.getState() %></span>
                             <span>Pincode</span>
                            <span class="total1"><%=dd.getPincode() %></span>
                            <div class="clearfix"></div>	
                             <a class="order" href="deliverydetails.jsp" >Change Address</a>			 
                        </div>
                        
                        <hr class="featurette-divider">
                        <ul class="total_price">
                           <li class="last_price"> <h4>TOTAL</h4></li>	
                           <li class="last_price"><span>&#8377;<%=totalamt-(totalamt*(0.1)) %></span></li>
                            <li class="last_price"> <h4>Payment</h4></li>
                            <li class="last_price"><span>Cash on Deliver(COD)</span></li>
                           <div class="clearfix"> </div>
                        </ul> 
                        <div class="clearfix"></div>
                        <a class="order" href="confirm.jsp" >Confirm Order</a>
                    </div>
            </div>
<%
		}
%>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>