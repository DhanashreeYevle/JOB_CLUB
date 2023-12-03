<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); 
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
Statement stmt=conn.createStatement();
String id=request.getParameter("id");
ResultSet rs=stmt.executeQuery("select * from register.r");
while(rs.next())
{
	out.println("<p>"+rs.getInt(1));
	out.println(rs.getString(2));
	out.println(rs.getInt(3));
	out.println(rs.getString(4));
	out.println(rs.getString(5)+"</p>");
	
}conn.close();

%>
</body>
</html>