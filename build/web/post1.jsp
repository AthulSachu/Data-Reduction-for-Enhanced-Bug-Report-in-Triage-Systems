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
<body>
<%

String q=(String)session.getAttribute("username");
String q1=(String)session.getAttribute("c");
String q2=(String)session.getAttribute("c1");
String q3=(String)session.getAttribute("c2");
String q4=request.getParameter("b3");
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
Statement st;


st = con.createStatement();


 String sql= "insert into bl(sid,cate,qn,did,ans) values('"+q3+"','"+q1+"','"+q2+"','"+q+"','"+q4+"')";
	int rs = st.executeUpdate(sql);


	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request, response);
%>
</body>
</html>