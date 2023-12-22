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
<%@include file="includes/head.jsp" %>
<%@include file="includes/foot.jsp" %>
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


<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">User Name</th>
      <th scope="col">Contact</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <%
	String q1="select id,username,contact,email,role,status from details";
	PreparedStatement ps1=conn.prepareStatement(q1);
	ResultSet as=ps1.executeQuery();
	while(as.next())
	{ %>
		
		<tr>
		<th scope="row"><% out.println(as.getString("id"));%></th>
		<td><% out.println(as.getString("username"));%></td>
		<td><% out.println(as.getString("contact"));%></td>
		<td><% out.println(as.getString("email"));%></td>
		<td><% out.println(as.getString("role"));%></td>
		<td><% out.println(as.getString("status"));%></td>
		</tr> 
		
	<%
	}
	%>
  </tbody>
</table>

</body>
</html>