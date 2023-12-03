<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String fname=request.getParameter("Firstname");
String lname=request.getParameter("Lastname");
String gender=request.getParameter("gender");
String address=request.getParameter("message");
String city=request.getParameter("city");
String state=request.getParameter("state");
String Pincode=request.getParameter("pin");
String mobile=request.getParameter("m_no");
String email=request.getParameter("email");
String password=request.getParameter("password");
String qualification=request.getParameter("menu");
String workat=request.getParameter("workplace");
String workingdays=request.getParameter("days");
%>
<%try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
String query="insert into registeration values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(query);
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,gender);
ps.setString(4,address);
ps.setString(5,city);
ps.setString(6,state);
ps.setString(7,Pincode);
ps.setString(8,mobile);
ps.setString(9,email);
ps.setString(10,password);
ps.setString(11,qualification);
ps.setString(12,workat);
ps.setString(13,workingdays);
int n=ps.executeUpdate();
out.println("saved successfully");
ps.close();
conn.close();
}
catch(Exception e)
{
	out.println(e);	
}%><%session.putValue("mobile",mobile);
session.setAttribute("mobile",mobile);
session.setMaxInactiveInterval(120); %>
</body>
</html>