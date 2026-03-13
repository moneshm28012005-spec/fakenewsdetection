
<!doctype html>
<html class="no-js" lang="">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.InetAddress" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Malicious URL</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
	<!--[if lt IE 9]> <script src="js/html5shiv.js"></script> 
	<script src="js/respond.min.js"></script> <![endif]--> 		
        <!-- Place favicon.ico in the root directory -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/style2.css">

    </head>
<body >
		 <!-- start preloader -->
        <div id="loader-wrapper">
            <div class="logo"></div>
            <div id="loader">
            </div>
        </div>
        <!-- end preloader -->
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		
<!-- Start Header Section -->
<header class="main_menu_sec navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12">
				<div class="lft_hd">
 				</div>
			</div>			
			<div class="col-lg-9 col-md-9 col-sm-12">
				<div class="rgt_hd">					
					<div class="main_menu">
						<nav id="nav_menu">
							<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							</button>	
						<div id="navbar">
							<ul>
								<li><a class="page-scroll" href="index.html">Home</a></li> 
						 
								<li><a class="page-scroll" href="index.jsp">Back</a></li>
							 
							 
							</ul>
						</div>		
						</nav>			
					</div>					
						
				</div>
			</div>	
		</div>	
	</div>	
</header>
 <%
	String js=(String)session.getAttribute("keyword");
%>
<!-- start contact us Section -->
<section id="ctn_sec">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs12 ">
				<div class="title_sec">
					<h1> <h1>
					<h2> </h2>
				</div>			
			</div>		
			<div class="col-sm-6" style="margin-top: 89px;"> 
				<div id="cnt_form">
					<form id="contact-form" class="contact" name="contact-form" method="post" action="Search.jsp">
						<div class="form-group">
					 
						<input type="text" name="urls" class="form-control name-field" required="required" placeholder="Serach Keyword" style="border-radius: 26px;">
						</div>
					 
						<div class="form-group">
							<button type="submit" class="btn btn-primary"style="border-radius: 21px;">Search</button>
						</div>
					</form> 
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="cnt_info">
				 
				</div>
			</div>			
		</div>
	</div>
</section>
  	<table align="center" border="0" width="" style="margin-top: -88px;background-color: antiquewhite;margin-left: 244px;">
				 
					 
		 
						
               <%
               String search = "";
               String url;
               search = request.getParameter("search");
               url = request.getParameter("urls");
               
                
               String c="";
		       Class.forName("com.mysql.jdbc.Driver");
       		   System.out.println("loading class loaders");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
              
              Statement st=con.createStatement();
              String f="select * from indexer where keyword like '"+'%'+search+'%'+"' or keyword like '"+'%'+url+'%'+"' ";
              
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("url");
            	  c=rs.getString("keyword");
%>
                <tr> <th style="color:red;"><center> </center></th>
                <th style="color:red;"><center style="MARGIN-RIGHT: 650PX;MARGIN-LEFT: -158PX;"><%=c%></center></th>
				<tr><th style="color:red;"><center><a href="<%=b%>"><%=b%></a></center></th> 
				
				
 				<% } %>
 	 

 			  <%
 	 
 			  /*Ip Adress Coding Start*/
 			 String ip = "";
 			 InetAddress inetAddress = InetAddress.getLocalHost();
 			 ip = inetAddress.getHostAddress();
 			  System.out.println(ip);
 			 /*Ip Adress Coding eEnd*/
 			 
               String search1 = "";
               String url1;
               search1 = request.getParameter("search");
               url1 = request.getParameter("urls");
               
                
               String c1="";
		       Class.forName("com.mysql.jdbc.Driver");
       		   System.out.println("loading class loaders");
               Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
              
              Statement st1=con1.createStatement();
              String f1="select * from attack where keyword like '"+'%'+search+'%'+"' or keyword like '"+'%'+url+'%'+"' ";
              
              ResultSet rs1=st1.executeQuery(f1);
              
              while(rs1.next())
              {
            	  String a1=rs1.getString("id");
            	  String b1=rs1.getString("url");
            	  c1=rs1.getString("keyword");
%>
                <tr> <th style="color:red;"><center> <%=c1%></center></th>
 				<tr><th style="color:red;"><center><a href="Malicious.jsp?ipa=<%=ip%>&&url=<%=b1%>&&keyword=<%=c1%>"><%=b1%></a></center></th> 
				
				
 				<% } %>
		</table>
		<br><br><br><br>
		<p align="center"><a href="index.jsp">Click Back </a></p>
<!-- End footer Section -->
 

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="js/vendor/jquery-1.11.2.min.js"></script>

<script src="js/isotope.pkgd.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/appear.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/showHide.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/scrolling-nav.js"></script>
<script src="js/plugins.js"></script>
<!-- Google Map js -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>
		<script>
			function initialize() {
			  var mapOptions = {
				zoom: 14,
				scrollwheel: false,
				center: new google.maps.LatLng(41.092586000000000000, -75.592688599999970000)
			  };
			  var map = new google.maps.Map(document.getElementById('googleMap'),
				  mapOptions);
			  var marker = new google.maps.Marker({
				position: map.getCenter(),
				animation:google.maps.Animation.BOUNCE,
				icon: 'img/map-marker.png',
				map: map
			  });
			}
			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
<script src="js/main.js"></script>

<script src="showHide.js" type="text/javascript"></script>

<script type="text/javascript">

$(document).ready(function(){


   $('.show_hide').showHide({			 
		speed: 1000,  // speed you want the toggle to happen	
		easing: '',  // the animation effect you want. Remove this line if you dont want an effect and if you haven't included jQuery UI
		changeText: 1, // if you dont want the button text to change, set this to 0
		showText: 'View',// the button text to show when a div is closed
		hideText: 'Close' // the button text to show when a div is open
					 
	}); 


});

</script>
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>

<script>

  //Hide Overflow of Body on DOM Ready //
$(document).ready(function(){
    $("body").css("overflow", "hidden");
});

// Show Overflow of Body when Everything has Loaded 
$(window).load(function(){
    $("body").css("overflow", "visible");        
    var nice=$('html').niceScroll({
	cursorborder:"5",
	cursorcolor:"#00AFF0",
	cursorwidth:"3px",
	boxzoom:true, 
	autohidemode:true
	});

});
</script>



    </body>
</html>
