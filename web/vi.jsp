<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/b.gif">
<%





Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
Statement st;
st = con.createStatement();
String sql= "select * from bl";
ResultSet rs = st.executeQuery(sql);
String a=null;
String b=null;
String c=null;
String d=null;
String e=null;
while(rs.next())
{
	a=rs.getString(1);
	b=rs.getString(2);
	c=rs.getString(3);	
	d=rs.getString(4);
	e=rs.getString(5);
%>
<h1 style="color:blanchedalmond;">Posted by : <%=a %></h1>
<h2 style="color: aqua;">Question : <%=c %></h2>
<h3>Answered by : <%=d%></h3>
<h2>Solution : <%=e%></h2>
<hr style="width:100%;">

<%} %>





</body>
</html>