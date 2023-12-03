<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%if(session.getAttribute("mobile")!=null){
	
}
else{
	response.sendRedirect("logins.html");
}
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<style>
.update{
		background-color:#4CAF50; 
		color: white; 
		padding: 5px 5px;
		margin:5px;
	 	margin-bottom:10px;
}
input[type=text],[type=email],[type=email],[type=digit],[type=tel],[type=password],[type=date]{
	width:350px;
	align-items:center;
}
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
	<a href ="profile.jsp">Home</a>
	<a href ="#" class="right">About us</a>
	 <div class="right">
		<div class="dropdown"  style="float:right">
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
		 <a href="Userhistory.jsp">History</a>
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

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register" user="root" password="root"/>
<sql:query dataSource="${db}" var="rs">
Select*from registeration where mobile=?;
<sql:param value="${param.mobile}"></sql:param>
</sql:query>
<center><form action="updates.jsp" method="post">
<table>
	 <h2 style="color:#4CAF50">Update Record</h2>

	<c:forEach var="table" items="${rs.rows}">
		<tr><th>Contact number:</th>  <td><input type="text" value="${param.mobile}" name="mobile" enabled/>	</td></tr>
		<tr><th>FirstName:</th>  <td><input type="text" value="${table.fname}" name="fname"/></td></tr>
		<tr><th>LastName:</th> <td><input type="text" value="${table.lname}" name="lname"/></td></tr>
		<tr><th>Gender:</th> <td><input type="text" value="${table.gender}" name="gender"/></td></tr>
		<tr><th>Address:</th> <td><input type="text" value="${table.address}" name="address"/></td></tr>
		<tr><th>City:</th> <td><input type="text" value="${table.city}" name="city"/></td></tr>
		<tr><th>State:</th> <td><input type="text" value="${table.state}" name="state"/></td></tr>
		<tr><th>Pin Code:</th> <td><input type="text" value="${table.Pincode}" name="Pincode"/></td></tr>
		<tr><th>E-mail Id:</th> <td><input type="text" value="${table.email}" name="email"/></td></tr>
		<tr><th>Qualification:</th> <td><input type="text" value="${table.qualification}" name="qualification"/></td>
		<tr><th>WorkPlace:</th> <td><input type="text" value="${table.workat}" name="workat"/></td>
		<tr><th>Working Days:</th> <td><input type="text" value="${table.workingdays}" name="workingdays"/></td></tr>
	</c:forEach>
</table><br><center><input type="submit" value="Update" class="update"/></center>
<a href="profile.jsp">Back to Records</a>
</form></center>
</body>
</html>