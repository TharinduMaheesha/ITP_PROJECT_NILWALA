<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Remove subject from the cart</title>
</head>
<body>

	<%
	
	try{
		String id= request.getParameter("d");
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/lessonmanagement","root","");
		Statement stmt=conn.createStatement();
		stmt.executeUpdate("delete from cart where subject_code='"+id+"'");
		
		response.sendRedirect("viewCart.jsp");	
	}
	catch(NullPointerException e)
	{
		e.printStackTrace();
	}
	%>



</body>
</html>