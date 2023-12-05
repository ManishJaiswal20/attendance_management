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
String username,pass,email,contact,status,role;

username=request.getParameter("vusername");
pass=request.getParameter("vpass");
email=request.getParameter("vemail");
contact=request.getParameter("vcontact");
status="Active";
role="User";

String q="insert into details(username,password,email,contact,status,role) value('"+username+"','"+pass+"','"+email+"','"+contact+"','"+status+"','"+role+"')";

PreparedStatement psmt=conn.prepareStatement(q);

int row=psmt.executeUpdate();

if(row>0){
	out.println("your account is successfully created");
}
else{
	out.println("wrong");
}
%>
<br>
<a href="index.jsp"><button>LOGIN</button></a>

</body>
</html>