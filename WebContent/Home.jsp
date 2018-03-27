<%@page import="com.EC.jsp.DAO.HomeDAOj"%>
<%@page import="com.EC.bean.products"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>N-AIR</title>
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
        <div class="header-end">
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="./images/shoe3.jpg" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                    <div class="item">
                      <img src="./images/shoe1.jpg" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                    <div class="item">
                      <img src="./images/shoe2.jpg" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                  </div>
                  <!-- Controls -->
                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left car-icn" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right car-icn" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="feel-fall">
            <div class="container">
                <div class="pull-left fal-box">
                    <div class=" fall-left">
                        <h3>Fall</h3>
                        <img src="images/f-l.png" alt="/" class="img-responsive fl-img-wid">
                        <p>Inspiration and innovation<br> for every athlete in the world</p>
                        <span class="fel-fal-bar"></span>
                    </div>
                </div>
                <div class="pull-right fel-box">
                    <div class="feel-right">
                        <h3>Feel</h3>
                        <img src="images/f-r.png" alt="/" class="img-responsive fl-img-wid">
                        <p>Inspiration and innovation<br> for every athlete in the world</p>
                        <span class="fel-fal-bar2"></span>
                    </div>
                </div>
            <div class="clearfix"></div>
            </div>
           </center> 
        </div>
        <div class="shop-grid">
            <div class="container">
            
                <div class="col-md-8 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
                    <% 
						Blob blo=null;

						products p=HomeDAOj.menf();
	
						blo=p.getP_image();

						int size=(int)blo.length();
	
 						byte[] bloarr=blo.getBytes(1, size);
 	
 						String imgDataBase64=new String(Base64.getEncoder().encode(bloarr));
					%>
                   <center>
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img">
                  <img src="data:image/gif;base64,<%= imgDataBase64%>"  alt="/asd" class="img-responsive gri-wid"> 
               </div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price" >&#8377;<%=p.getP_price() %></span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                    <a href="Single.jsp?id=<%=p.getPid() %>" on>Quick view</a>
<!--                         <button name="btn" value="">Quick view</button> -->
                    </div>
                    </center>
                </div>
                <div class="col-md-8 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
                    <% 
                    blo=null;
                    p=null;
                    
                    p=HomeDAOj.menc();
                    
                    blo=p.getP_image();
					
					size=(int)blo.length();
					 bloarr=blo.getBytes(1, size);
					 imgDataBase64=new String(Base64.getEncoder().encode(bloarr));					 
 					%>
                    <center>
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="data:image/gif;base64,<%= imgDataBase64%>" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3><%= p.getName()%></h3>
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">&#8377;<%=p.getP_price() %></span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="Single.jsp?id=<%=p.getPid() %>">Quick view</a>
<!--                          <button name="btn" value="">Quick view</button> -->
                    </div>
                    </center>
                </div>
                <div class="col-md-8 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
                    <% 
                    blo=null;
                    p=null;
                    
                    p=HomeDAOj.womenf();
                    
                    blo=p.getP_image();
				
					size=(int)blo.length();
					 bloarr=blo.getBytes(1, size);
					 imgDataBase64=new String(Base64.getEncoder().encode(bloarr));
 					%>
                    <center>
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="data:image/gif;base64,<%= imgDataBase64%>" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3><%= p.getName() %></h3>
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">&#8377;<%= p.getP_price() %></span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="Single.jsp?id=<%=p.getPid() %>">Quick view</a>
<!--  							<button name="btn" value="">Quick view</button> -->
                    </div>
                    </center>
                </div>
                <div class="col-md-8 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
					<%
					 blo=null;
                    p=null;
                    
                    p=HomeDAOj.womenc();
                    
                    blo=p.getP_image();
					
					size=(int)blo.length();
					 bloarr=blo.getBytes(1, size);
					 imgDataBase64=new String(Base64.getEncoder().encode(bloarr));
 					%>
                    <center>
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="data:image/gif;base64,<%= imgDataBase64%>" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3><%= p.getName() %></h3>
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">&#8377;<%= p.getP_price() %></span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="Single.jsp?id=<%=p.getPid() %>">Quick view</a>
<!-- 							 <button name="btn" value="">Quick view</button> -->
                    </div>
                    </center>
                </div>
                
        <div class="clearfix"></div>
            </div>
        </div>
        <div class="sub-news">
            <div class="container">
                <form>
                    <h3>NewsLetter</h3>
                <input type="text" class="sub-email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
                <a class="btn btn-default subs-btn" href="#" role="button">SUBSCRIBE</a>
                </form>
            </div>
        </div>
       

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>