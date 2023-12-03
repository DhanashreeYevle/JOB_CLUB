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
<title>Applied Job Successfully</title>
<style type="text/css">
//input[type=text],[type=password]{
	//width:350px;
	 //padding: 10px;
  	//font-size: 17px;
  	//border: 1px solid grey;
  	//float: center;
  	//width: 80%;
  	//background: #f1f1f1;
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
.side3 {
  -ms-flex: 50%; 
  flex: 50%;
  padding:1%;
  background-color:white;
}
.main6 {   
	-ms-flex: 50%;
	flex:50%;
	padding:1%;
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
	padding: 5px 5px;
	margin:5px;
	margin-bottom:10px;
	width:175px;
}
table, td{
		padding:5px;
		}
		
.feed{
		background-color:#4CAF50; 
		color: white; 
		padding: 8px 100px;
		margin:5px;
	 	margin-bottom:10px;
		cursor: pointer;
		//width:100px;
		font-size: 15px;
		text-align:left;
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
	<a href ="display.jsp">Home</a>
	
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
		<a href="query.html">more...</a>
		</div>
		</div>
	</div>
</div><%--
<div class="row">
	<div class="side3"><fieldset><center>
	<img src="http://localhost:8080/D/images/tick.gif" width="130px">
	<h3 style="color:Blue;">Successfully Applied</h3>
	<hr></center>
	<br><br>&nbsp;&nbsp;&nbsp;&nbsp;Apply Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<script>var d = new Date();
	document.write(d.toDateString());
	</script><br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;Due Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<script>  var mydate = new Date();
	d.setMonth(d.getMonth()+1);
	document.write(d.toDateString());
	</script><br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;
	Work:
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Make a Website of JobClub <br><br>
	*Payment:10,000/-<br><br><br><br>
	<p style="color:red; font-size:10px">* Will be credited after Workdone</p>
</fieldset></div>
<div class="main6">
<fieldset></fieldset>
</div>
</div>--%>
<div class="row">
	<div class="side3"><fieldset><center>
	<img src="http://localhost:8080/D/images/tick.gif" width="130px">
	<h1 style="color:Blue;">Successfully Applied</h1>
	<hr></center>
	
	

<%
	 String a_id=request.getParameter("a_id");
	
int p_in;
	if(request.getParameter("pin")==""){
		p_in=0;
	}
	else{
		p_in=Integer.parseInt(request.getParameter("pin").trim());
	}
%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/register" user="root" password="root"/>
<sql:update dataSource="${db}" var="rs">
	insert into apply (a_id,app_name,u_id,workat,address,pin,time) values (?,?,?,?,?,?,?);
	<sql:param value="${param.a_id}"></sql:param>
	<sql:param value="${param.app_name}"></sql:param>
	<sql:param value="${param.u_id}"></sql:param>
	<sql:param value="${param.workat}"></sql:param>
	<sql:param value="${param.address}"></sql:param>	
	 <sql:param value="${p_in}"></sql:param> 
	<sql:param value="${param.time}"></sql:param>
</sql:update>
<sql:query dataSource="${db}" var="rs">
Select * from apply where a_id = '${param.a_id}' and time = '${param.time}'
</sql:query>
<table width="80%">
<c:forEach var="table" items="${rs.rows}">
	<tr><td>Applied On:</td><td><c:out value="${table.time}"></c:out></td></tr>
	<tr><td>WorkID:</td><td><c:out value="${table.w_id}"></c:out></td></tr>
		<tr><td>App_ID:</td><td><c:out value="${table.a_id}"></c:out></td></tr>
		<tr><td>App name:</td><td><c:out value="${table.app_name}"></c:out></td></tr>
		<tr><td>User_ID:</td><td><c:out value="${table.u_id}"></c:out></td></tr>
		<tr><td>WorkAt:</td><td><c:out value="${table.workat}"></c:out></td></tr>
		<tr><td>Address:</td><td><c:out value="${table.address}"></c:out></td></tr>
		<tr><td>PIN Code:</td><td><c:out value="${table.pin}"></c:out></td>
	</tr>
</c:forEach>
</table><p style="color:red">*Other details will be mailed at your registered mail ID</p></center></fieldset></div>
<div class="main6">
	<form onsubmit="m()" action="feedbackinsert.jsp" method="post"><center>
	<fieldset>
		<h1 style="color:darkblue;">Send us your Feedback!</h1>
	Your Name<br><input type="text" name="name" style="width:328px; padding:5px;font-size: 12px;"><br><br>
	Contact No.<br><input type="text" name="mobile" style="width:328px; padding:5px;font-size: 12px;"><br><br>
	Did you achieve your goal with Job Club?<br><br>
	<input type="checkbox" name="goal" value="yes">Yes <input type="checkbox" name="goal" value="partially">Partially <input type="checkbox" name="goal" value="no">No<br><br>
	Do you have any suggestions to make your website better?<br><br>
	<textarea name="suggest" style="width:328px; height:100px;">
	</textarea> <br><br>
	<input type="Submit" value="Send Feedback" class="feed">
	</fieldset></center>
	</form>
</div>
</div>
<center><a href="display.jsp"><h4>Go Back</h4></a></center>
</body>
</html>
<script type = "text/javascript">
	function m()
	{
		alert("Feedback Sent Successfully");
		
		window.open("http://localhost:8080/D/display.jsp");	
	}
</script>