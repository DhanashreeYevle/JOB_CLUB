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
String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String goal=request.getParameter("goal");
String suggest=request.getParameter("suggest");
%>
<%try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
String query="insert into feedback values(?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,mobile);
ps.setString(3,goal);
ps.setString(4,suggest);
int n=ps.executeUpdate();
out.println("saved successfully");
ps.close();
conn.close();
}
catch(Exception e)
{
	out.println(e);	
}%>
</body>
</html>