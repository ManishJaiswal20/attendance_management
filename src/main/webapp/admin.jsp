<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="conn.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache"); 
response.setHeader("Expires","0"); 

    ResultSet rs;
    String q;
    
    PreparedStatement ps;
    	String s=(String)session.getAttribute("usern");
    
    	q="select * from details where (email='"+s+"' OR username='"+s+"')";
    	
    	ps=conn.prepareStatement(q);
    	
    	rs=ps.executeQuery();
    	
    	if(rs.next())
    	{
    		String us=rs.getString("username");	
    	
    	%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a href="#"><img alt="aaa" src="images/men.png" height="50px" width="50px"></a>&nbsp&nbsp
  
  
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="mx-auto">
      <li type="none" class="nav-item">
        <h3 class="text-light">Hello <%=us %> welcome to admin page</h3>
      </li>
      <%
    }
    %>        
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="attendencedetails.jsp">
      <input class="form-control mr-sm-2" type="search" name="xusername" placeholder="Search Username" aria-label="Search">
      <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    <ul class="navbar-nav my-2 my-lg-0">
    <li class="nav-item">
        <a class="nav-link" href="alogout.jsp"><button type="submit" class="btn btn-danger">Logout</button></a>
      </li>
    </ul>
  </div>
</nav>
<br>

<h3 class="text-center">AVAILABLE USERS</h3>

<ul class="list-group">
<li class="list-group-item active h4">
	<%
	String q1="select username,contact from details";
	PreparedStatement ps1=conn.prepareStatement(q1);
	ResultSet as=ps1.executeQuery();
	while(as.next())
	{
		out.println("Username : "+as.getString("username")+" <br>Contact : "+as.getString("contact")+"<br><br>");
	}
	%>
</li>
</ul>



</body>
</html>