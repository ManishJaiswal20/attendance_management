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
<title>Insert title here</title>
</head>
<body>


<%
String username,pass,email,contact;

String s=(String)session.getAttribute("usern");
int a=(int)session.getAttribute("id");

username=request.getParameter("Eusername");
pass=request.getParameter("Epass");
email=request.getParameter("Eemail");
contact=request.getParameter("Econtact");

String q="update details set username='"+username+"',password='"+pass+"',email='"+email+"',contact='"+contact+"' where id='"+a+"'";
String q1="update presente set username='"+username+"' where username='"+s+"'";

PreparedStatement psmt=conn.prepareStatement(q);
PreparedStatement psmt1=conn.prepareStatement(q1);

int row=psmt.executeUpdate();
psmt1.executeUpdate();
session.invalidate();
response.sendRedirect("index.jsp");
%>

</body>
</html>