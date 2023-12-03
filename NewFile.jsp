<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
p{
	color:darkred;
}
fieldset{
	border:2px black solid;
}
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  background-image:url('C:\Users\Dell\Desktop\symbol.png');
}

.navbar 
{
	overflow: hidden;
	background-color:grey;
	width:100%
	length:100%
}
.navbar a 
{
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}
.navbar a.right {
  float: right;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: grey;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position:absolute;
  background-color: #f9f9f9;
  min-width: 200px;
  min-height:180px
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
<img src="C:\Users\Dell\Desktop\symbol.png" width="12%">
<div class="navbar">
	<a href ="1.html">Home</a>
	<a href ="#" class="right">About us</a>
	<a href ="#" class="right"></a>

	<div class="right">
		<div class="dropdown">
		<button class="dropbtn" >Contact us</button>
		<div class="dropdown-content">
		<a href="#">E-mail ID:yevle.dhanashree@gmail.com</a>
		<a href="#">M No.:9426032647</a>
		<a href="#">Customer-care:079-123456</a>
		</div>
		</div>
	</div>
</div><br><br>
<% 
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String address=request.getParameter("message");
String city=request.getParameter("city");
String state=request.getParameter("state");
String Pincode=request.getParameter("pin");
String mobile=request.getParameter("moblie");
String email=request.getParameter("email");
String qualification=request.getParameter("menu");
String workat=request.getParameter("workplace");
String workingdays=request.getParameter("days");
%>
<%out.println(mobile);
out.println(fname);
out.println(lname);%>
<%if(mobile!=null){
	try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
String query="UPDATE registeration SET fname=? where mobile="+mobile;
PreparedStatement ps=conn.prepareStatement(query);
ps.setString(1,fname);
int n=ps.executeUpdate();
out.println(n);
if(n>0){
out.println("saved successfully");}
else{out.println("not");}
ps.close();
conn.close();
}
catch(Exception e)
{
	out.println(e);	
}}%>
</body>
</html>