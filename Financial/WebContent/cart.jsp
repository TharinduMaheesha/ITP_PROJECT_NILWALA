
<%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Subject Cart</title>
</head>
<body>
<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>
<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>
<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div></div><br><br>


<hr>
	
	
	<br><br><h4>Subject Cart </h4>
	<center><P>Check your cart details and click PAY NOW</P></center> 
<div class="shadow-lg p-3 mb-5 bg-white rounded">

<div>
<ul class="breadcrumb"> 
 <li><a href="#"><b></b></a></li>  
</ul>
</div>
<div style = " max-width: 700px;  margin: auto;" class = "background"  class = "transbox" >
<table style = " align : center;">
<div class="table-responsive">

<form method = "POST" action = "">

<table class="table">
 <thead class="tt">
   <tr>  
     <th scope="col">Student ID</th>
     <th scope="col">Subject Code</th>
     <th scope="col">Name</th>
     <th scope="col">Level</th>
   </tr>
 </thead>
 <tbody>
<%
ArrayList<cart> array = (ArrayList)request.getAttribute("Details");
for(cart car : array){

%>

   <tr>
      <td><%=car.getStudentID() %></td>
      <td><%=car.getSubjectCode() %></td>
     <td><%=car.getName() %></td>
     <td><%=car.getLevel() %></td>
     <%} %>
     </form>   
   </tr>
 </tbody>
</table>
</div>
<center><input type ="submit" name="PAY NOW" value="PAY NOW" class="btn btn-primary"></center>
<hr >
</body>
</html>