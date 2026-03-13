 
<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<head>
	<!-- 1.0 meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Animated 404 Error Page">
	<meta name="author" content="rakesh535">
	<meta name="keywords" content="404, css3, html5, animated, animated bubble, template">
	<!-- 2.0 title -->
	<title>Malicious URL</title>
	<!-- 3.0 CSS IMPORT -->
	<!-- CSS IMPORT FOR PLUGIN -->
	<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/js/wow/css/libs/animate.css" rel="stylesheet">
	<link href="assets/js/wordsrotator/jquery.wordrotator.min.css" rel="stylesheet">
	<!-- CSS IMPORT FOR FONT -->
	<link href='https://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='assets/fonts/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
	<!-- CSS IMPORT FOR MAIN STYLE -->
	<link href="assets/css/style.css" rel="stylesheet">
	<!-- support HTML5 elements and media queries for IE9 -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- 4.0 FAVICON -->
	<link rel="shortcut icon" href="assets/img/favicon.png">
</head>
<%@page import="java.net.InetAddress" %>
<body>
 <%
 /*Ip Adress Coding Start*/
	 String ip = "";
	 InetAddress inetAddress = InetAddress.getLocalHost();
	 ip = inetAddress.getHostAddress();
	  System.out.println(ip);
	 /*Ip Adress Coding eEnd*/
 
 %>
	<!-- 6.0 wrapper -->
	<div class="wrapper" id="wrapper-large">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12 text-center">
					<!-- 6.1 SPIRIT BUBBLES CANVAS -->
					<canvas class="spirit-bubbles" id="canvas"></canvas>
					<!-- end SPIRIT BUBBLES CANVAS -->

					<!-- 6.2 HOME & RETURN BUTTONS -->
					<ul class="return-btn center-block" style="margin-top: 227px;">
						<li>
							<a href="index.html" class="wow slideInLeft">Home <span class="icons-container"><span class="home-icon"></span></span></a>
						</li>
						<li>
							<a href="#" class="wow slideInRight">Return Back <span class="icons-container"><span class="return-icon"></span></span></a>
						</li>
					</ul>
				 

					<!-- 6.4 search-form -->
					
					<form class="form-inline search-form" action="Search.jsp" style="margin-top: 130px;">
						    <div class="input-group">
							<input type="type" name = "search" class="form-control" placeholder="search the web"
							    style="
							    border-bottom-color: cadetblue;
							    border-top-color: cadetblue;
							    border-left-color: cadetblue;
							    border-right-color: cadetblue;">
														<span class="input-group-btn">
													  	<button type="submit" class="btn"style="
							    border-right-color: red;
							    border-bottom-color: red;
							    border-top-color: red;
							    border-left-color: red;"><span class="search-icon"></span></button>
														</span>
						</div>
						</form>
				 
					<!-- end search-form -->
 
				</div>
			</div>
		</div>
	</div>
	<!-- end wrapper -->
 <%
               String c="";
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
              
              Statement st=con.createStatement();
              String f="select * from indexer";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("url");
            	  c=rs.getString("keyword");
      }session.setAttribute("keyword",c); %>
	<!-- 7.0 javascript import -->
	<!-- jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- wow -->
	<script src="assets/js/wow/dist/wow.min.js"></script>
	<!-- wordsrotator -->
	<script src="assets/js/wordsrotator/jquery.wordrotator.min.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>
</body>

</html>