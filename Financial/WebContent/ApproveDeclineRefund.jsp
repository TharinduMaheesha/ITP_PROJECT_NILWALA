<%@page import="com.cart.Refunds"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="admin_styles.css">
<meta charset="ISO-8859-1">
<title>Approve or Decline refund requests</title>

<style>
table {
  border-collapse: collapse;
  width: 100%;
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
}
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
th, td {
  padding: 18px;
  text-align: left;
  font-family: Arial, Helvetica, sans-serif;
}
h3{
	color:black;
	font-size: 28px;
  font-weight: bold;
 font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #ff392b;
  color: white;
  font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
<%@ include file="WEB-INF/Admin_header.jsp" %>  
<marquee behavior="scroll" direction="left">Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     |
Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |</marquee>
<br><br>
<center><h3>Approve or Decline refund requests of Students</h3></center>
<br><br>
<table class="table">
 <thead>
   <tr>  
      <th>Date & Time</th>
     <th>Refund ID</th>
     <th >Reason</th>
     <th >Status</th>
     <th >Student ID</th>
      <th>Decline</th>
       <th >Approve</th>
   </tr>
 </thead>
		 <tbody>
		<% ArrayList<Refunds> array = (ArrayList)request.getAttribute("Details6");
		for(Refunds ref:array){	
		%>
		   <tr>  
		     <td><%=ref.getDate()%></td>
		     <td><%=ref.getRefID()%></td>
		     <td><%=ref.getReason()%></td>
		     <td><%=ref.getStatus()%></td>
		     <td><%=ref.getStudentID()%></td>
		     <td><a href="#">Decline</a></td>
		     <td><a href="#">Approve</a></td>
		     <%}%>
		
		   </tr>
		 </tbody>
</table>


<br><br><br>



</body>
</html>