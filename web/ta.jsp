<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>NewWave Business Inc.</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />


<style>
 td,
th {
    font-size: 15px;
    font-weight: 500;
}

.thdark {
    background-color: #111;
    color: #FFC700;
}

table {
    border-collapse: separate;
    border-spacing: 0 0.7em;
}
</style>

</head>
<body>
<%!String a,b,c;%>
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
<%-- <a href="#" class="navi_tx" style="width:131px;">Welcome&nbsp<%=group %></a> --%>
<!--        <a href="tasks.jsp" class="navi_tx">Assigned Tasks</a>  -->
<!--        <a href="open.jsp" class="navi_tx" style="width:105px;">Open forum</a>  -->
<!--        <a href="index.jsp" class="navi_tx" style="width:71px;">Logout</a>  -->
         
       </div>
      <div class="tp_img1">
        <div class="tp_img2"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" alt="" width="211" height="131" class="logo" /></a> <img src="images/tp_tx.gif" alt="" width="450" height="49" class="tp_tx" /> </div>
   
      </div>
    </div>
     <br></br>
    <!--Top Block Ends -->
<form action="Up" method="post">
<br></br>
    <table align="center" border="1">
    <br></br>
<%
Connection con=null;
 Class.forName("com.mysql.jdbc.Driver");
	con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
		Statement st,st1;
	
		
	st = con.createStatement();
	st1 = con.createStatement();
//	System.out.println("gr==="+group);
	String re="unresolved";	
	 String sql= "select * from rep where assign='"+group+"' AND status='"+re+"' ";
	 
     ResultSet rs = st.executeQuery(sql);
     if(rs.next())
     {
    	 String sql1= "select * from rep where assign='"+group+"' AND status='"+re+"'  ";
         ResultSet rs1= st1.executeQuery(sql1);
        
   while(rs1.next())
    {
 	    	a=rs1.getString(2);
// 	   	System.out.println("gr==="+a);
 	    	
 	    	b=rs1.getString(3);
 	    	c=rs1.getString(4);
    }
     %> 
     <tr><tr></tr></tr><tr><tr></tr></tr><tr><tr></tr></tr>
    <tr><td><b>BUG NAME</b></td><td><%=a %></td></tr>
    <tr><td><b>BUG DESCRIPTION<b></td><td><%=b %></td></tr> 
    <tr><td><b>TRIAGE<b></td><td><%=c %></td></tr> 
     <tr><td><b>SOLUTION<b></td><td><input type="text" name="s1"></input></td></tr> 
     <tr></tr><tr></tr>
     <tr><td colspan="2" align="center"><input type="submit" value="Update"></input></td></tr>
     </table>
     
     </form>
   
    
     <%}
     
     else
     {%>
    	 <br><br><center><h3>NO BUGS ASSIGNED</h3></center>
    <%}
     %>
     <%session.setAttribute( "err", a );%>
      
     <br>
     </br>
     <center><a href="upro.jsp">Click here to mov back</a></center>
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
