<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="conn.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATTENDENCE DETAILS</title>
<%@include file="includes/head.jsp" %>
<%@include file="includes/foot.jsp" %>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="mx-auto">
      <li type="none" class="nav-item">
        <h3 class="text-light">"ATTENDENCE - DETAILS"</h3>
      </li>
    </ul>
</div>
</nav>


<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">User Name</th>
      <th scope="col">Date</th>
      <th scope="col">Enter Time</th>
      <th scope="col">Exit Time</th>
    </tr>
  </thead>
  <tbody>
    <%
    String username;
    username=request.getParameter("xusername");
    String q="select * from presente where (username='"+username+"') order by id desc ";
    PreparedStatement ps=conn.prepareStatement(q);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    { %>
		
		<tr>
		<th scope="row"><% out.println(rs.getString("id"));%></th>
		<td><% out.println(rs.getString("username"));%></td>
		<td><% out.println(rs.getString("date"));%></td>
		<td><% out.println(rs.getString("enter_time"));%></td>
		<td><% out.println(rs.getString("exit_time"));%></td>
		</tr>
		
	<%
	}
	%>
  </tbody>
</table>

</body>
</html>