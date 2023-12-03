<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String message=request.getParameter("message");
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
	out.println("Connected");
	String q="insert into queryapply values(?,?,?,?)";
	PreparedStatement ps=conn.prepareStatement(q);
	ps.setString(1,email);
	ps.setString(2,fname);
	ps.setString(3,lname);
	ps.setString(4,message);
	int i=ps.executeUpdate();
	out.println("saved successfully");
	ps.close();
	conn.close();
}
catch(Exception e)
{
	out.println(e);	
}
%>
</body>
</html>