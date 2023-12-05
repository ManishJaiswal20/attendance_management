<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@include file="conn.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<%

String email,pass;

email=request.getParameter("uemail");
pass=request.getParameter("upass");


String q="select * from details where (email='"+email+"' OR username='"+email+"') AND password='"+pass+"'";

PreparedStatement psmt=conn.prepareStatement(q);

ResultSet rs=psmt.executeQuery();

session.setAttribute("usern", email);

while(rs.next())
{
	if((rs.getString("email").equals(email) || rs.getString("username").equals(email)) && rs.getString("password").equals(pass) && rs.getString("role").equals("Admin"))
	{
		response.sendRedirect("admin.jsp");
	}
	
	if((rs.getString("email").equals(email) || rs.getString("username").equals(email)) && rs.getString("password").equals(pass) && rs.getString("role").equals("User") && rs.getString("status").equals("Active"))
	{
		response.sendRedirect("user.jsp");
	}
}

out.println("<script>alert('Invalid Username or Password');window.location.href='index.jsp';</script>");

%>

</body>
</html>