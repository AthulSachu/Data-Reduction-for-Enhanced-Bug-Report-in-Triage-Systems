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
out.println(group);
String cat=request.getParameter("q");
String quest=request.getParameter("w");
String raise=request.getParameter("e");
HttpSession se =request.getSession();
se.setAttribute("c", cat);
se.setAttribute("c1", quest);
se.setAttribute("c2", raise);


%>
<form action="post1.jsp" method="get">
 <fieldset style="width: -moz-max-content;">
  <legend>Query Answer:</legend>
  Category: <%=cat %><br>
  <br>
  Question:  <%=quest %><br>
  <br>
  
  Your Answer : <input type="text" name="b3" style="width: 466px; height: 120px;"><br>
<input type="submit" value="POST ANSWER">
  
 </fieldset>
</form>

</body>
</html>