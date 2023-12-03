<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>
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
<title>Job Applying</title>
<style type="text/css">
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
}

.navbar 
{
	overflow: hidden;
	background-color:grey;
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
.subnav {
  float: left;
  overflow: hidden;
}
.subnav .subnavbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.navbar a:hover, .subnav:hover .subnavbtn {
  background-color: grey;
}
.subnav-content {
  display: none;
  position: absolute;
  left: 0;
  background-color:grey;
  width: 100%;
  z-index: 1;
}
.subnav-content a {
  float: left;
  color: white;
  text-decoration: none;
}
.subnav-content a:hover {
  background-color: #eee;
  color: black;
}
.subnav:hover .subnav-content {
  display: block;
}
.login
{
	background-color:#4CAF50; 
	color: white; 
	padding: 8px 100px;
	margin:5px;
 	margin-bottom:10px;
	cursor: pointer;
	width:350px;
	font-size: 17px;
}
.login submit:hover {
  background: #0b7dda;
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
input[type=text],[type=email],[type=radio],[type=digit],[type=tel],[type=password],[type=date]{
	 padding: 5px;
	 font-size: 12px;
  	border: 1px solid grey;
  	float: center;
  	background: #f1f1f1;
}
.proceed{
	background-color:#4CAF50; 
	color: white; 
	padding: 8px 8px;
	margin:5px;
	margin-bottom:10px;
	width:175px;
}
</style>

<style style="text/css">
div.slide-left {
  width:90%;
  overflow:hidden;
}
div.slide-left p {
  animation: slide-left 19s;
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
</head>
<body>
<div class="row">
	<div class="side1">
	<img src="http://localhost:8080/D/images/symbol.png" width="60%">
	</div>
	<div class="main5">
	<div class="slide-left"><h1>
	<p><b  style="color:red">Welcome to Job Club!</b></p>
	</div>
	<div class="row">
	<div class="side2"><p style="color:black"><b>Any Question/Query </b>
	<a href ="file:///C:/Users/Dell/Desktop/query1.html">
	<b style="color:blue;">Click here</b></a>
	|| <a href ="#"><b>  Client</a></b>
	</p></div>
	<p id="demo" style="font-weight:bold;color:black"></p>
	<script>
	var d = new Date();
	document.getElementById("demo").innerHTML = d.toDateString();
	</script>
	</div></div>
</div>
<div class="navbar">
	<a href ="display.html">Home</a>
	<a href ="#" class="right">About us</a>
	   <div class="right">
		<div class="dropdown" style="float:right;">
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
		<a href="query1.html">more...</a>
		</div>
		</div>
	</div>
</div>
<div>
<form action="succes.jsp" method="post"><center>

<br><h2><b style="color:#4CAF50">Applied For:</b>
	<b style="color:blue">
	<%
		String app_name=request.getParameter("application");
		String a_id=request.getParameter("id");
		String u_id=(String)session.getAttribute("mobile");
	%>
	<%
		out.println(app_name);
	%>
	</b>
	<input type="hidden" value="<%out.println(a_id);%>" name="a_id"><input type="hidden" value="<%out.println(app_name);%>" name="app_name">
	<input type="hidden" value="<%out.println(u_id);%>" name="u_id">
	<input type="hidden" value="<%=new java.util.Date()%>" name="time">
	<br><br>
	</h2><hr>
	</h2><hr>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<h2>Some Details to Re-confirm</h2>
	<hr><br>
	<b>WorkAt:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
	<input type="radio" name="workat" value="Home" id="r1" onClick="getResults()">Home &nbsp
	<input type="radio" name="workat" value="Outdoor" id="r2">Office<br><br>
	<input type="hidden" value="<%out.println(a_id);%>" name="a_id"><input type="hidden" value="<%out.println(app_name);%>" name="app_name">
	<input type="hidden" value="<%out.println(u_id);%>" name="u_id">
	<input type="hidden" value="<%=new java.util.Date()%>" name="time">
	<div class="text">
	<br><b>Address:</b>
	<br><br>
	<textarea name="address" placeholder="Enter Address" style="width:350px; height:80px;padding: 10px;font-size: 12px;border: 1px solid grey;float:center;background: #f1f1f1;" ></textarea>
	<br><br><br>
	</div>
	<div class="text"><b>PIN Code:<br><br>
	<input type="digit" placeholder="6 digit number" name="pin" style="width:350px;"><br><br>
	</b>
	</div>
	<input type="submit" value="Procced" class="proceed"/>
</center></form></div>

</body></html>
<script>$(document).ready(function () {
    $(".text").hide();
    $("#r1").click(function () {
        $(".text").show();
    });
    $("#r2").click(function () {
        $(".text").hide();
    });
});
</script>

<%--
String workat=request.getParameter("workat");
String address=request.getParameter("address");
String pin=request.getParameter("pin");
String time=request.getParameter("time");
--%>
<%--try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
String query="insert into apply values(?,?,?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(query);
ps.setString(1,a_id);
ps.setString(2,app_name);
ps.setString(3,u_id);
ps.setString(4,workat);
ps.setString(5,address);
ps.setString(6,pin);
ps.setString(7,time);
int n=ps.executeUpdate();
out.println("saved successfully");
ps.close();
conn.close();
}
catch(Exception e)
{
	out.println(e);	
}--%>