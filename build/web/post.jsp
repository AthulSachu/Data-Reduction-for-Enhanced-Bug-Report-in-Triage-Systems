<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String group=(String)session.getAttribute("username");
String q=request.getParameter("b1");
String q1=request.getParameter("b2");
String f="null";
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
Statement st;
st = con.createStatement();
String sql= "INSERT INTO blog(sid,cate,qn,did,ans) VALUES ('"+group+"','"+q+"','"+q1+"','"+f+"','"+f+"')";
int rs = st.executeUpdate(sql);


RequestDispatcher rd=request.getRequestDispatcher("open.jsp");
rd.include(request, response);


%>


</body>
</html>