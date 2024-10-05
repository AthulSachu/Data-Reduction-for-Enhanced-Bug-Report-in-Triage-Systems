<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>NewWave Business Inc.</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
String group=(String)session.getAttribute("username");
%>

<center>
  <div id="main_block">
    <!--Top Block Starts -->
    <div id="top_block">
      <div class="navi">
<!--        <a href="http://all-free-download.com/free-website-templates/" class="navi_hm">Home</a>  -->
<!--        <a href="bug.jsp" class="navi_tx">Bug</a>  -->
<a href="#" class="navi_tx" style="width:40px;">Welcome&nbsp<%=group %></a>
       <a href="tasks.jsp" class="navi_tx" style="width:101px;">Assigned Tasks</a> 
      <a href="open1.jsp" class="navi_tx" style="width:32px;">Community</a> 
       <a href="vi.jsp" class="navi_tx" style="width:79px;">View Blogs</a> 
       <a href="index.jsp" class="navi_tx" style="width:4px;">Logout</a> 
         
       </div>
      <div class="tp_img1">
        <div class="tp_img2"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" alt="" width="211" height="131" class="logo" /></a> <img src="images/tp_tx.gif" alt="" width="450" height="49" class="tp_tx" /> </div>
      </div>
    </div>
    <fieldset style="width: -moz-max-content;">
 <legend><b>Blogs</b></legend>
    <!--Top Block Ends -->

   <%
String group1=(String)session.getAttribute("username");
System.out.println(group);




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
 
<h2>Posted by : <%=a %></h2>
<h2>Category :<%=b %></h2>
<h2>Question : <%=c %></h2>
<h2>Commented by :<%=d %></h2>
<h2>Answer : <%=e %></h2>
<h2>----------------------------------------------------------------------------</h2>

<%} %>
   
    
  </div>
  
        
        
       
        
     
  <div id="sub_block2">
    <div id="footer_block"> <span class="ftr_nv">
<!--      <a href="http://all-free-download.com/free-website-templates/">Home</a> -->
<!--       <span>|</span> <a href="http://all-free-download.com/free-website-templates/">Bugs Raised </a> <span>|</span> -->
<!--        <a href="http://all-free-download.com/free-website-templates/"></a> <span>|</span>  -->
<!--        <a href="http://all-free-download.com/free-website-templates/">About Us </a> <span>|</span> -->
<!--         <a href="http://all-free-download.com/free-website-templates/"style="width: 77px;" >Contact us</a>  -->
<!--         </span> <span class="cpy">Copyright &copy; 2008, All rights reserved. <a href="http://www.buytemplates.net/CSS-XHTML-web-templates.aspx">Css/Xhtml template</a> designed by buytemplates.net</span> </div> -->
  </div>
</center>
<!-- <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body> -->
</html>
