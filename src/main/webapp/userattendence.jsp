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
String username,date,intime,outtime;

username=request.getParameter("ausername");
date=request.getParameter("adate");
intime=request.getParameter("aintime");
outtime=request.getParameter("aouttime");

String q="insert into presente(username,date,enter_time,exit_time) value('"+username+"','"+date+"','"+intime+"','"+outtime+"')";

PreparedStatement psmt=conn.prepareStatement(q);

int row=psmt.executeUpdate();

if(row>0){
	out.println("SUCCESS ENTERED");
}
else{
	out.println("wrong");
}
%>

</body>
</html>