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
<title>Job Page</title>
<style>
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
  float: right;
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
  background-color: grey;
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
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}
form.example::after {
  content: "";
  clear: both;
  display: table;
}
.row {  
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
}
.side {
  -ms-flex: 20%; 
  flex: 20%;
  background-color:white;
  padding: 10px;
	border:2px solid black;
}
.side1 {
  -ms-flex: 20%; 
  flex: 20%;
  background-color:white;
}
.side2 {
  -ms-flex: 40%; 
  flex: 40%;
  background-color:white;
}
.main {   
	-ms-flex: 20%;
	flex:20%;
	background-color: white;
	padding: 10px;
	border:2px solid black;
}
.main4 {   
	-ms-flex: 80%;
	flex:80%;
	background-color: white;
	padding: 10px;
}
.main1 {
	-ms-flex: 20%;
	flex:20%;
	background-color: white;
	padding: 10px;
	border:2px solid black;
}
.main2 {
	-ms-flex: 20%;
	flex:20%;
	background-color: white;
	padding: 10px;
	border:2px solid black;
}
.main3 {
	-ms-flex: 10%;
	flex:10%;
	background-color: white;
	border:2px solid black;
}
.main5 {   
	-ms-flex: 80%;
	flex:80%;
	background-color: white;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: dodgerblue;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card1 button:hover {
  opacity: 0.7;
}
.card1 button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: dodgerblue;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
.card1 button:hover {
  opacity: 0.7;
}
h1{
	text-color:3395FF;
	
}
h2{
	text-color:black;
}
#overlay,#overlay2,#overlay3,#overlay4,#overlay5,#overlay6,#overlay7,#overlay8,#overlay9,#overlay10,#overlay11,#overlay12,#overlay13,#overlay14,#overlay15,#overlay16,#overlay17,#overlay18 {
  position: fixed;
  display: none;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.5);
  z-index: 2;
  cursor: pointer;
}

#text{
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 17px;
  color: black;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
} 
#rcorners1 {
  border-radius: 25px;
  background: white;
  padding: 20px; 
  width: 500px;
  height: 500px;  
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
</style></head>
<body>
<div class="row">
	<div class="side1">
	<img src="http://localhost:8080/D/images/symbol.png" width="60%">
	</div>
	<div class="main5">
	<div class="slide-left" style="color:red">
	<h1><p><b>Be Between Jobs with Job Club!</b></p></h1>
	</div>
	<div class="row">
	<div class="side2"><p><b style="text-align:left;">Any Question/Query </b>
	<a href ="http://localhost:8080/D/query.html">
	<b style="color:blue;">Click here</b></a>
	|| <a href ="#"><b>  Client</a></b>
	</p></div>
	<p id="demo" style="font-weight:bold;text-align:right"></p>
	<script>
	var d = new Date();
	document.getElementById("demo").innerHTML = d.toDateString();
	</script>
	</div></div>
</div>
<div class="navbar">
	<a href ="display.html">Home</a>
	<a href ="#" class="right">About us</a>
	<div class="subnav">
    <button class="subnavbtn">Search</button>
    <div class="subnav-content">
		<form class="example">
		<input type="text" placeholder="Search For Jobs" name="search2">
		<button type="submit">Submit</button>
		</form> 
    </div>
  </div>
  <div class="right">
		<div class="dropdown">
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
		<button class="dropbtn">Contact us</button>
		<div class="dropdown-content">
		<a href="#">E-mail ID:yevle.dhanashree@gmail.com</a>
		<a href="#">M No.:9426032647</a>
		<a href="#">Customer-care:079-123456</a>
		<a href="query.html">more...</a>
		</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="side">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/webdesign.jfif">
	<h1>Web Developer</h1>
	<p class="price">Rs. 10,000-20,0000</p>
	<p>Web developers need a combination of graphic design skills and technical computer skills that will allow them to create particular designs on web pages.
		In addition to looking nice, websites need to be functional and secure. It is the responsibility of web developers to create such sites that meet the requirements of employers or clients. 
	</p><br><br><br><br><br>
		<a href="afterapply.jsp?application=Web Developer&id=1"><button>Apply</button></a>
	</div></div>
	</div>
	<div  class="main">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/type.jfif">
	<h2>Notes Making/Data Entry </h2>
	<p class="price">Rs.500-1000/day</p>
	<p>Part Time Jobs for Freshers or Students or Female With Daily Payment.<br>
		IMPORTANT NOTE - Now you can Work with Android Mobile Phone Also.<br>
		1. You Need Computer or Laptop or Android Mobile jobs With Net Connection.<br>
		2. Very Simple Notes Making Jobs.	<br>
		Important Note - This is Daily Payments.100% Guarantee Income.<br></p>
	<br><br><br><br><br><br>
	<a href="afterapply.jsp?id=2&application=Notes Making/Data Entry">
	<button type="submit">Apply</button></a>
	</div></div>
	</div>
	<div class="main1">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/sotware.jfif" width="100%">
	<h2>Software/Hardware job</h2>
	<p class="price">Rs. 500-1000</p>
	<p> If you have a good knowledge of pc/laptop or are pursuing for your engineering then this job is for you; you can repair pc/laptop/mobiles
	hardware or software from your home or by going at individual’s place. 
	</p>
	<br><br><br><br><br><br><br>
	<a href="afterapply.jsp?id=3&application=Software/Hardware job">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main2">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/com.jfif" width="50%">
	<h2>Computer Teaching at Home</h2>
	<p class="price">Rs. 5000-10,000</p>
	<p> Apart from school, many students need home tuition and can get proper care & attention, in-depth explanations, new studying methods etc. Reliable home tutors provide personalised attention and unique study methods to help strengthen students’ subject comprehension.
	An experienced tutor with decades of experience in providing home tuition can right away help you clear your doubts.
	Other advantages of getting home tuition or having a private tutor include: individual attention  
	The average cost for home tuition may also vary as per locality.
	</p><br>
	<a href="afterapply.jsp?id=4&application=Computer Teaching at Home">
	<button>Apply</button></a>
	</div></div>
	</div>
</div>
<center><h2>Online Funds/Insurance/Tax Payment Jobs</h1></center>
<div class="row">
	<div class="side">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/lic.png">
	<h2>LIC Agent</h2>
	<p class="price">Rs. 10,000-20,0000</p>
	<p>Want a job and has knowledge in marketing and finance then, visit your nearest LIC office and meet a development officer. He will arrange your training. Post your training, you would appear for an exam by IRDA.
	After passing the exam, you enroll yourself as agent and issued a code by LIC. 
	</p>
	
	<a href="afterapply.jsp?id=5&application=LIC Agent">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/mf5.png" width="70%">
	<h2>Mutual Fund Agent</h2>
	<p class="price">Rs.5000-10,000</p>
	<p></p>
	<a href="afterapply.jsp?id=6&application=Mutual Fund Agent">
	<button>Apply</button></a>
	</div></div>
	</div>

	<div class="main2"><div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/mf4.jpg">
	<h2>Tax Payment(Accounting)  Agent</h2>
	<p class="price">Rs. 5,000-10,000/work</p>
	<p> 
	</p>
	<a href="afterapply.jsp?id=7&application=Tax Payment(Accounting)Agent">
	<button>Apply</button></a>
	</div></div>
	</div>
</div></div>
<center><h2>Beauty Products</h1></center>
<div class="row">
	<div class="side">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/beauty.jfif">
	<h2>Beauty Product Seller</h2>
	<p class="price">Rs. 10,000-20,0000</p>
	<p>If you are having knowledge of beauty products!! and want to do part time work and earn money. Then you can sell beauty products like make up materials 
	like brushes, nail paints, lipsticks, eye shades etc from your home only. 
	</p><br><br><br><br><br>
	<a href="afterapply.jsp?id=8&application=Beauty Product Seller">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/jewellery.jpg" width="50%">
	<h2>Artificial/Handmade Ornament seller</h2>
	<p class="price">Rs.5000-10,000</p>
	<p>
	Do you love accessorizing with beautiful jewellery?
	Is fashion an area where you thrive? Do you have a talent for creating unique jewelry and love making beautiful things with your own hands?
	If you answered yes to any of these questions, selling jewelry from home might be a great way to bring in some extra income.
	Prize would depend on kind of jewelry and job can be both part time and full time from your home only so you can register and advertise.
	</p>
	<a href="afterapply.jsp?id=9&application=Artificial/Handmade Ornament seller">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main1">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/dress.jpeg" width="50%">
	<h2>Dress Material Seller</h2>
	<p class="price">Rs. 500-5,000</p>
	<p> Sometimes going to shop or mall is not preferred due to many times people feel clothes there are costly;
		and on another side many women’s are generally free in their afternoon time, so just as to earn little bit money they sell dress materials, 
		directly buying from wholesale market in bunches being at their home only putting not much amount of profit on clothes customers can also 
		sometimes buy few things in bunches.
	</p><br><br>
		<a href="afterapply.jsp?id=10&application=Dress Material Seller">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main2">
	<div style="padding:20px">
	<div class="card">
	<img src="http://localhost:8080/D/images/m.jfif">
	<h2>Makeup Product Seller</h2>
	<p class="price">Rs. 5,000-10,000/work</p>
	<p> 
	</p>
		<a href="afterapply.jsp?id=11&application=MakeUp Product Seller">
	<button>Apply</button></a>
	</div></div>
	</div>
</div>
<center><h2>Fitness Trainer Jobs</h1></center>
<div class="row">
	<div class="side">
	<div style="padding:20px">
	<div class="card1">
	<img src="http://localhost:8080/D/images/jim.jpg">
	<h2>Gym Trainer</h2>
	<p class="price">Rs. 5,000-10,000</p>
	<p> Physical fitness is very important and also with that a good physique.
		Fitness freaks can search here a job of gym trainer can teach aerobics, cardio, and all other types of gym workout.
	</p><br><br>
		<a href="afterapply.jsp?id=12&application=Gym Trainer">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main">
	<div style="padding:20px">
	<div class="card1">
	<img src="http://localhost:8080/D/images/yoga.jpg" width="70%">
	<h2>Yoga Teacher</h2>
	<p class="price">Rs.5000-10,000</p>
	<p>Physical fitness is very important and also with that a good physique. Yoga also keeps person mentally healthy and is also good for spiritual health. Yoga is an art if you are its artist then you can enroll and teach yoga  to people, timings would be only during morning and evening hours.</p>
	<a href="afterapply.jsp?id=13&application=Yoga Teacher">
	<br><button>Apply</button></a>
	</div></div>
	</div>
	<div class="main1">
<div style="padding:20px">
	<div class="card1">
	<img src="http://localhost:8080/D/images/swim1.jpg">
	<h2>Swimming Trainer</h2>
	<p class="price">Rs. 5,000-10,000</p>
	<p>Physical activity is very and many people like’s water and are eager to learn swimming just for fun
	and also many people are amazing swimmer and can teach swimming effectively. 
	So any age group person can learn and teach swimming.  
	</p>
	<a href="afterapply.jsp?id=14&application=Swimming Trainer">
	<button>Apply</button></a>
	</div></div>
	</div>
</div>
<center><h2>Entertainment Activites Jobs</h1></center>
<div class="row">
	<div class="side">
	<div style="padding:20px">
	<div class="card1">
	<img src="http://localhost:8080/D/images/singer.jfif">
	<h2>Singing Teacher</h2>
	<p class="price">Rs. 5,000-10,000</p>
	<p>Having good vocal, and knows singing. 
	You can teach in any academy, or can also go home to home and teach singing.
	</p><br><br><br><br><br>
	<a href="afterapply.jsp?id=15&application=Singing Teacher">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main">
	<div style="padding:20px">
	<div class="card1">
	<img src="http://localhost:8080/D/images/music.jfif">
	<h2>Music Teacher</h2>
	<p class="price">Rs.5000-10,000</p>
	<p>
	Music relaxes one’s; playing different musical instruments like guitar, sitar, violin, piano, etc.
	If you want to be a music teacher and want to work part time or professionally. 
	</p><br><br><br><br><br>
	<a href="afterapply.jsp?id=16&application=Music Teacher">
	<button>Apply</button></a>
	</div></div>
	</div>
	<div class="main1">
	<div class="card1">
	<img src="http://localhost:8080/D/images/dance1.jpg" width="50%">
	<h2>Dancing Teacher</h2>
	<p class="price">Rs. 5,000-10,000</p>
	<p>
		Dance moves makes body free; India has many different dance forms like bharatnatyam, kuchipudi, kathak, etc also there are many other international dance form like salsa, hip-hop, etc and Gujarat’s all time favorite dance form garba. On marriage occasions also dance would be taught.
		And also a school student can learn dance in group or individually.
	</p><br>
	<a href="afterapply.jsp?id=17&application=Dancing Teacher">
	<button>Apply</button></a>
	</div>
	</div>
</div>
<center><h2>Small Works In Free Time</h1></center>
<div class="row">
	<div class="side">
	<div class="card">
	<img src="http://localhost:8080/D/images/d1.jfif">
	<h2>Delivery Boy</h2>
	<p class="price">Rs. 5000-12,000</p>
	<p> We are looking to hire a reliable Delivery Boy to deliver packages to customers.
		The Delivery Boy's responsibilities include verifying the identities of recipients before handing over packages, updating the status of the delivery on the company’s website upon completion of each delivery, and accepting payment for delivered packages where required.
		You should also be able to ensure that the company vehicle is regularly refueled and well-maintained.
	</p>
	<a href="afterapply.jsp?id=18&application=Delivery Boy">
	<button>Apply</button></a>
	</div>
	</div>
	<div class="main">
	<div class="card1">
	<img src="http://localhost:8080/D/images/box packing.png" width="80%">
	<h2>Box Packing Job</h2>
	<p class="price">Rs.5000-10,000</p>
	<p>If you are good at handling things, packing materials like clothes, jewelry etc in boxes then it’s an opportunity for you to work and earn. You can work from your home also by going to store and take all material at your home then pack it, and send it back. Also you can go to store or that factory and work.</p>
	<br><a href="afterapply.jsp?id=19&application=Box Packing Job">
	<button>Apply</button></a>
	</div>
	</div>
	<div class="main1">
	<div class="card">
	<img src="http://localhost:8080/D/images/stich1.jpg">
	<h2>Small Stiching Work</h2>
	<p class="price">Rs. 500-1000</p>
	<p>If you love to sew and want to earn money using sewing as your anchor; then you can make your profile here. Any kind of small stitching work, making of cloth bags, or even doing designs on clothes like using small beads etc. Job can be both part time and full time and pay will be mutual decided by customer and worker. 
	</p>
	<a href="afterapply.jsp?id=20&application=Small Stiching Work">
	<button>Apply</button></a>
	</div>
	</div>
	<div class="main2">
	<div class="card">
	<img src="http://localhost:8080/D/images/driver.jpg">
	<h2>Driver</h2>
	<p class="price">Rs. 5,000-15,000</p>
	<p> Driving is a controlled operation and movement of a motor vehicle; 
	not every people can skillfully drive. Any person above age 18 to age 50, who knows driving and has a driver license; 
	can take up a part time or full time job of a driver. 
	Any female drivers can also apply for job. Pay would depend on distance travelled.
	Condition: Person should have proper eye sight and should not be addicted to any type of drugs or etc.
	</p>
	<a href="afterapply.jsp?id=21&application=Driver">
	<button>Apply</button></a>
	</div>
	</div>
</div>
<form onsubmit="m()" action="feedbackinsert.jsp" method="post"><center>
<fieldset>
<legend>
<h1 style="color:darkblue;">Send us your Feedback!</h1></legend>
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
</body>
</html>
<script type = "text/javascript">
	function m()
	{
		alert("Feedback Sent Successfully");
		
		window.open("http://localhost:8080/D/display.jsp");	
	}
</script>