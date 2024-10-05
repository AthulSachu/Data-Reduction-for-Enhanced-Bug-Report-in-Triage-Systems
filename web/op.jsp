<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<%
String group=(String)session.getAttribute("username");
%>
<h1>ONLINE COMMUNITY SUPPORT</h1>

<h1>Ask Your Question</h1>
<form action="post.jsp">
 <fieldset style="width: -moz-max-content;">
  <legend>Open Community Forum:</legend>
  Category: <input type="text" name="b1"><br>
  <br>
  Question:  <input type="text" name="b2" style="width: 466px; height: 120px;"><br>
  <br>
 <input type="submit" value="POST" style="margin-left: 179px;">
  
 </fieldset>
</form>

</body>
</html>