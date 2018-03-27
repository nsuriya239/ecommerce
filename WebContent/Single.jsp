<%@page import="com.EC.jsp.DAO.SingleDAOj"%>
<%@page import="com.EC.bean.products"%>
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
<title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
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
    <body id="body">
 <jsp:include page="Header.jsp"></jsp:include>
 <form  method="POST" action="Addcart" id="addcart">
 <% 
 Blob blob=null;
	byte[] bloarr=null;
	int size=0;
	String imgDataBase64="";						
 						
						products p=new products();
						p.setPid(Integer.parseInt(request.getParameter("id")));
 						
						p=SingleDAOj.prodData(p);
						
								blob=p.getP_image();
                    			size=(int)blob.length();
                           	 bloarr=blob.getBytes(1,size);
                           	 imgDataBase64=new String(Base64.getEncoder().encode(bloarr));
                        %>
        <div class="showcase-grid">
            <div class="container">
                <div class="col-md-8 showcase">
                    <div class="flexslider">
                          <ul class="slides">
                            <li data-thumb="images/show.jpg">
                                <div class="thumb-image"> <img src="data:image/gif;base64,<%= imgDataBase64%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                          </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-4 showcase">
                    <div class="showcase-rt-top">
                        <div class="pull-left shoe-name">
                        
                        <input type="hidden" name="pid" value="<%=p.getPid()%>" >
                        
                            <h3 name="name"><%= p.getName() %></h3>
                            <p></p>
                            <h4 name="price">&#8377;<%= p.getP_price() %></h4>
                        </div>
                        <div class="pull-left rating-stars">
                            <ul>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="featurette-divider">
                    <div class="shocase-rt-bot">
                        <div class="float-qty-chart">
                        <ul>
                            <li class="qty">
                                <h3>Size Chart</h3>
                                <select class="form-control siz-chrt" name="size">
                                  <option value="6">6 US</option>
                                  <option value="7">7 US</option>
                                  <option value="8">8 US</option>
                                  <option value="9">9 US</option>
                                  <option value="10">10 US</option>
                                  <option value="11">11 US</option>
                                </select>
                            </li>
                            <%
                            if(p.getP_quantity()!=0)
                            {
                            	if (p.getP_quantity()<7)
                                {
                                	%>
                                	<li class="qty">
                                    <h4>QTY</h4>
                                    <select class="form-control qnty-chrt" name="qty" id="qty">
                                    <% 
                                      for(int i=1;i<=p.getP_quantity();i++)
                                      {
                                    	  %>
                                    	  <option value="<%=i%>"><%=i %></option>
                                    	  <%
                                      }
                                    %>
                                     </select>
                                </li>
                            </ul>
                                	<%
                                }
                            	else
                            	{
                            %>
                            <li class="qty">
                                <h4>QTY</h4>
                                <select class="form-control qnty-chrt" name="qty" id="qty" onchange="check()">
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                                  <option value="7">7</option>
                                </select>
<!-- 									<input type="number" name="qty" id="qty" onchange="check()"> -->
                                <%
                                }
                                %>
                                <script type="text/javascript">
                                function check()
                                {
                                	if(document.getElementById("qty").value>qty||document.getElementById("qty").value>7)
                                		{
                                		alert("Please Select a valid quantity");
                                		}
                                }
                                </script>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        </div>
                        <ul>
                            <li class="ad-2-crt simpleCart_shelfItem">
                                <a class="btn item_add" href="#" id="btn" role="submit" onclick="myfunc()">Add To Cart</a>
                                <script type="text/javascript">
                                function myfunc() {
                                	var form = document.getElementById("addcart");

                                	document.getElementById("btn").addEventListener("click", function () {
                                	  form.submit();
                                	});
								}
                                </script>
                            </li>
                        </ul>
                        <%
                        }
                             
                        else
                        {
                        %>
                        <div class="clearfix"></div>
                        </div>
                        <ul>
                         <li class="ad-2-crt simpleCart_shelfItem">
                        <li><h1>NO STOCK</h1></li>
                        </li>
                        </ul>
                        </ul>
                        <%
                        }   %>
                    </div>
                    <div class="showcase-last">
                        <h3>product details</h3>
                        <ul>
                            <li><%= p.getP_desc() %></li>
                        </ul>
                    </div>
                </div>
        <div class="clearfix"></div>
            </div>
        </div>
         </form>
 <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>