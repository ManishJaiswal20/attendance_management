<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="conn.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="mx-auto">
      <li type="none" class="nav-item">
        <h3 class="text-light">ATTENDENCE DETAILS LATEST FIRST</h3>
      </li>
    </ul>>
</div>>
</nav>>

<%
String username;
username=request.getParameter("xusername");
String q="select * from presente where (username='"+username+"') order by id desc ";
PreparedStatement ps=conn.prepareStatement(q);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	out.println("Name: "+rs.getString("username")+"<br>");
	out.println("Date: "+rs.getString("date")+"<br>");
	out.println("Enter Time: "+rs.getString("enter_time")+"<br>");
	out.println("Exit Time: "+rs.getString("exit_time")+"<br>");
	out.println("=====================================<br>");
}
%>

</body>
</html>