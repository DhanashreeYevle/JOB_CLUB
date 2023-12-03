<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>History of Jobs</title>
<style>
input[type=text],[type=email],[type=email],[type=digit],[type=tel],[type=password],[type=date]{
	width:300px;
	align-items:center;
}
p{
	color:red;
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
table,th,td,tr{
		border: 2px solid black;
		border-collapse: collapse;
		//padding: 10px;
		
	}
.update{
		background-color:#4CAF50; 
		color: white; 
		padding: 5px 5px;
		margin:5px;
	 	margin-bottom:10px;
}
.delete{
	background-color: red;
	 color: white;
	  padding: 5px 5px;
	  margin:5px;
	margin-bottom:10px;
}
.side2 {
  -ms-flex: 40%; 
  flex: 40%;
  background-color:white;
}
.main5 {   
	-ms-flex: 80%;
	flex:80%;
	background-color: white;
}
.side1 {
  -ms-flex: 20%; 
  flex: 20%;
  background-color:white;
}
.row {  
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
}
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

</style>
</style>
<style style="text/css">
div.slide-left {
  width:90%;
  overflow:hidden;
}
  animation: slide-left 19s;
div.slide-left p {
}

@keyframes slide-left {
  from {
    margin-left: 100%;
    width: 300%; 
  }

  to {
    margin-left: 0%;
    width: 100%;
  }
}
</style>
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
</head>
<body>
<div class="row">
	<div class="side1">
	<img src="http://localhost:8080/D/images/symbol.png" width="60%">
	</div>
	<div class="main5">
	<div class="slide-left" style="color:red">
	<h1><p><b>Welcome Admin!</b></p></h1>
	</div>
	<div class="row">
	<div class="side2"><p style="color:black"><b>See Records of Peoples here </b>
	<%--<a href ="file:///C:/Users/Dell/Desktop/query1.html">
	<b style="color:blue;">Click here</b></a>
	|| <a href ="#"><b>  Client</a></b>
	</p>--%></div>
	<p id="demo" style="font-weight:bold;color:black"></p>
	<script>
	var d = new Date();
	document.getElementById("demo").innerHTML = d.toDateString();
	</script>
	</div></div>
</div>
<div class="navbar">
	<a href ="profile.jsp">Home</a>
	<a href ="history.jsp" class="right"> Customer History</a>
	<a href ="feedback.jsp" class="right">Feedback of Peoples</a>
	 <div class="right">
		<div class="dropdown" style="float:right">
		<button class="dropbtn">My Account</button>
		<div class="dropdown-content">
		<a href="#">Welcome <%=session.getAttribute("mobile") %></a>
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
		<a href="query1.html">more...</a>
		</div>
		</div>
	</div>
</div><br><br>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register" user="root" password="root"/>
<sql:query dataSource="${db}" var="rs">
Select * from apply;
</sql:query>
<table width="100%">
<tr>
	<th>Applied On</th>
	<th>WorkID</th>
	<th>App_ID</th>
	<th>App name</th>
	<th>User_ID</th>
	<th>WorkAt</th>
	<th>Address</th>
	<th>PIN Code</th>
	<th colspan="2">Action</th>
</tr>
<c:forEach var="table" items="${rs.rows}">
	<tr>
		<td><c:out value="${table.time}"></c:out></td>
		<td><c:out value="${table.w_id}"></c:out></td>
		<td><c:out value="${table.a_id}"></c:out></td>
		<td><c:out value="${table.app_name}"></c:out></td>
		<td><c:out value="${table.u_id}"></c:out></td>
		<td><c:out value="${table.workat}"></c:out></td>
		<td><c:out value="${table.address}"></c:out></td>
		<td><c:out value="${table.pin}"></c:out></td>
		<td><a href ="hupdate.jsp?w_id=<c:out value='${table.w_id}'/>">
		<button class="update">Update</button></td></a>
		<td><a href ="delete.jsp?w_id=<c:out value='${table.w_id}'/>">
		<button class="delete">Delete</button></td></a>
		
	</tr>
</c:forEach>
</table>
</body>
</html>