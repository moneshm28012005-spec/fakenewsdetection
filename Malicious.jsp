<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
    <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detecting Malicious URL</title>
</head>
<body>
 

<%
 
String a = request.getParameter("url");
String b = request.getParameter("keyword");
String c = request.getParameter("ipa");
String name=" Malicious Web Page";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
	PreparedStatement query=con.prepareStatement("insert into hacker(urls,keywords,ips)values('"+a+"','"+b+"','"+c+"') ");
	query.executeUpdate();
	 
	
	      out.println("<script type=\"text/javascript\">"); 			
		  out.println("alert(\" This Is . '"+name+"'\")");

		  out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
	    rd.include(request,response);
	 
%>

</body>
</html>