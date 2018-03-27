<%@page import="com.EC.jsp.DAO.PlpDAOj"%>
<%@page import="com.EC.bean.products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
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
<div class="products-gallery">
           <div class="container">
               <div class="col-md-9 grid-gallery">
<%
  String cat=request.getParameter("cat_name");
	String scat=request.getParameter("scat");

	Blob blob=null;
	int size=0;
	byte[] bloarr=null;
	String imgDataBase64="";
	
						ArrayList<products> ap=PlpDAOj.selectproduct(cat, scat);
						
						for(products p:ap)
						{
                        	blob=p.getP_image();	 
                        	 size=(int)blob.length();
                        	 bloarr=blob.getBytes(1,size);
                        	 imgDataBase64=new String(Base64.getEncoder().encode(bloarr));
                         %>
                         <div class="col-md-4 grid-stn simpleCart_shelfItem">
                         <!-- normal -->
                            <div class="ih-item square effect3 bottom_to_top">
                                <div class="bottom-2-top">
                        <div class="img"><img src="data:image/gif;base64,<%= imgDataBase64%>" alt="/" class="img-responsive gri-wid"></div>
                                <div class="info">
                                    <div class="pull-left styl-hdn">
                                        <h3><%=p.getName()%></h3>
                                    </div>
                                    <div class="pull-right styl-price">
                                        <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">&#8377;<%=p.getP_price() %></span></a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div></div>
                            </div>
                        <!-- end normal -->
                        <div class="quick-view">
                             <a  href="Single.jsp?id=<%= p.getPid()%>">Quick view</a>
                        </div>
                    </div>
                        <%
                            } 
					
                            %>
                    
            <div class="clearfix"></div>
                </div>
               <div class="col-md-3 grid-details">
                    <div class="grid-addon">
                        <section  class="sky-form">
					 <div class="product_right">
						 <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						 <div class="tab1">
							 <ul class="place">								
								 <li class="sort">Shoes</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="PLP.jsp?cat_name=<%= cat %>&scat=Casual"><p>Casuals</p></a>
									<a href="PLP.jsp?cat_name=<%=cat %>&scat=Formal"><p>Formals</p></a>
						     </div>
					      </div>						  
						  				  
						  <!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!-- script -->					 
				 </section>
				 <section  class="sky-form">
					 <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
					 <div class="row row1 scroll-pane">
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						 </div>
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						 </div>
					 </div>
				 </section> 				 
				   <!---->
					 <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
					$(window).load(function(){
					 $( "#slider-range" ).slider({
								range: true,
								min: 0,
								max: 400000,
								values: [ 2500, 350000 ],
								slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
								}
					 });
					$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

					});//]]>  

					</script>
					<section  class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Type</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Air Max (30)</label>
								</div>
								<div class="col col-4">
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Armagadon   (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Helium (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kyron     (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Napolean  (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Foot Rock   (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Radiated  (30)</label>
<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Spiked  (30)</label>
								</div>
							</div>
				   </section>
				 <section  class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Roadstar</label>
								</div>
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Tornado</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kissan</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Oakley</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Manga</label>
									<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>Wega</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kings</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Zumba</label>
								</div>
							</div>
				   </section>		
                    </div>
               </div>
            <div class="clearfix"></div>
            </div> 
        </div>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>