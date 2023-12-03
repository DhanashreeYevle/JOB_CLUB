<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String mobile=request.getParameter("mobile");
	session.putValue("mobile",mobile);
	String password=request.getParameter("password");
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
	Statement stmt =conn.createStatement();
	String q="select * from registeration where mobile='"+mobile+"' and password='"+password+"'";
	ResultSet rs=stmt.executeQuery(q);
	RequestDispatcher rd;
	try
	{
		rs.next();
		if(rs.getString("password").equals(password) && rs.getString("mobile").equals(mobile))
		{
			//HttpSession hs=request.getSession();
			//hs.setAttribute("mobile",mobile);
			session.setAttribute("mobile",mobile);
			session.setMaxInactiveInterval(120);
			//out.println("Welcome "+mobile);
			//rd=request.getRequestDispatcher("apply.html");
			//rd.forward(request,response);
			response.sendRedirect("display.jsp");
		}
		else
		{
			//RequestDispatcher test;
			//out.println("test");
			//test=request.getRequestDispatcher("logins.html");
			//test.include(request,response);
			//request.setAttribute("error","invalid");
			response.sendRedirect("demo1.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<%
	try
	{
		if(mobile.equals("Dhanu_196") && password.equals("$h@nu28"))
		{
			session.setAttribute("mobile",mobile);
			session.setMaxInactiveInterval(120);
			response.sendRedirect("profile.jsp");
		}
		else
		{
			//out.println("invalid");
			response.sendRedirect("demo1.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>