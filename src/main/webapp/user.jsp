<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="conn.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User</title>
<meta charset="UTF-8">
<%@include file="includes/head.jsp" %>
<%@include file="includes/foot.jsp" %>
<style>
#main-table{
border: 4px solid rgb(0, 0, 0);
color: rgb(29, 7, 230);
background-color: rgb(248, 233, 192);
padding: 30px;
margin: 20px 40px;
}
</style>

</head>

<body>
<% 

String su=(String)session.getAttribute("usern");
if(su==null)
{
	response.sendRedirect("index.jsp");
}

%>
<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache"); 
response.setHeader("Expires","0"); 

    	String s=(String)session.getAttribute("usern");
    
    	String q="select * from details where (email='"+s+"' OR username='"+s+"')";
    	
    	PreparedStatement ps=conn.prepareStatement(q);
    	
    	ResultSet rs=ps.executeQuery();
    	
    	if(rs.next())
    	{
    		String us=rs.getString("username");	
    		int uid=rs.getInt("id");
    		session.setAttribute("id", uid);
    		
    	%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <a href="#"><img alt="aaa" src="images/men.png" height="50px" width="50px"></a>&nbsp&nbsp
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="mx-auto">
    
      <li type="none" class="nav-item">
        <h3 class="text-light">Hello <%=us %> welcome to attendence page</h3>
      </li>
      
      <%
    }
    %> 	
    
    </ul>
    
    <button class="btn btn-outline-warning my-2 my-sm-0" type="submit" data-toggle="modal" data-target="#edit">EDIT CREDENTIALS</button>&nbsp&nbsp
    
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="EditUdetails.jsp">
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Username:</label>
		    <input type="text" class="form-control" name="Eusername" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">*Password:</label>
		    <input type="password" class="form-control" name="Epass" id="exampleInputPassword1" placeholder="Enter password" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Email:</label>
		    <input type="text" class="form-control" name="Eemail" id="exampleInputEmail1" placeholder="Enter email" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Contact:</label>
		    <input type="text" class="form-control" name="Econtact" id="exampleInputEmail1" placeholder="Enter contact" required>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Confirm Edit</button>
		</form>
      </div>
    </div>
  </div>
</div>
    
    <ul class="navbar-nav my-2 my-lg-0">
    <li class="nav-item">
        <a class="nav-link" href="ulogout.jsp"><button type="submit" class="btn btn-outline-danger">Logout</button></a>
      </li>
    </ul>
  </div>
</nav>

<div id="main-table">

<h1></h1>

<table>
	<tr>
		<td>
			<form action="userattendence.jsp">
				<label>*Enter Your Username:</label>
				<input type="text" name="ausername" placeholder="Userame" required>
				<br><br>
				<label>*Enter Date:</label>
				<input type="date" name="adate" placeholder="(year-month-day)" required>
				<br><br>
				<label>*Enter IN time:</label>
				<input type="time" name="aintime" placeholder="(hour:min)" required>
				<br><br>
				<label>*Enter OUT time:</label>
				<input type="time" name="aouttime" placeholder="(hour:min)" required>
				<br><br>
				<input type="submit">
			</form>
		</td>
	</tr>
</table>

</div>

</body>
</html>