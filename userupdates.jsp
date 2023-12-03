<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%if(session.getAttribute("mobile")!=null){
	
}
else{
	response.sendRedirect("logins.html");
}
%>
<!DOCTYPE html>
<html>
<head><title>Profile Updated</title>
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
<img src="http://localhost:8080/D/images/symbol.png" width="12%">
<div class="navbar">
	<a href ="display.jsp">Home</a>
	<a href ="#" class="right">About us</a>
  <div class="right">
		<div class="dropdown" style="float:right">
		<button class="dropbtn">My Account</button>
		<div class="dropdown-content">
		<a href="#">Welcome <%=session.getAttribute("mobile") %></a>
		<input type="hidden" value="<%=session.getAttribute("mobile") %>">
		<% String mobile=request.getParameter("mobile");%><hr width=90%>
		<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register" user="root" password="root"/>
		<sql:query dataSource="${db}" var="rs">
		Select * from registeration;</sql:query>
		<a href ="userprofile.jsp?mobile=<c:out value='${mobile}'/>">
		 MyAccount</a>
		<a href="logout.jsp">Logout</a>
		</div>
		</div>
	</div>
	<div class="right">
		<div class="dropdown">
		<button class="dropbtn" >Contact us</button>
		<div class="dropdown-content">
		<a href="#">E-mail ID:yevle.dhanashree@gmail.com</a>
		<a href="#">M No.:9426032647</a>
		<a href="#">Customer-care:079-123456</a>
		<a href="query.html">more...</a>
		</div>
		</div>
	</div>
</div><br><br>

<%String fname=request.getParameter("fname");%>
<center><h2 style="color:blue"><u>Status</u></h2></center><br>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register" user="root" password="root"/>
<sql:update dataSource="${db}" var="rs">
UPDATE registeration SET fname=?,lname=?,password=?,gender=?,address=?,city=?,state=?,Pincode=?,email=?,qualification=?,workat=?,workingdays=? where mobile='${param.mobile}'
	<sql:param value="${param.fname}"/>
	<sql:param value="${param.lname}"/>
	<sql:param value="${param.password}"/>
	<sql:param value="${param.gender}"/>
	<sql:param value="${param.address}"/>
	<sql:param value="${param.city}"/>
	<sql:param value="${param.state}"/>
	<sql:param value="${param.Pincode}"/>
	<sql:param value="${param.email}"/>
	<sql:param value="${param.qualification}"/>
	<sql:param value="${param.workat}"/>
	<sql:param value="${param.workingdays}"/>
</sql:update>
<c:if test="${rs>=1}">
	<center><font size="5" color='green'>Congratulations! profile updated successfully.</font><br><br>
	<a href="display.jsp">Back to Home</a></center>
</c:if>
</body>
</html>