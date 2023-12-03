<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String mobile=request.getParameter("mobile"); %><%
//session.setAttribute("mobile", null);
Cookie c=new Cookie("mobile",mobile);
response.addCookie(c);
session.removeAttribute("mobile");
session.invalidate();
response.sendRedirect("1.html");
%>
<h1><font color="red">You Are Successfully logged out...</font></h1>
<a href="1.html">Go Back to Home Page</a>
</body>
</html>