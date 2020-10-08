<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Checking salary history</title>
</head>
<body>
<%@ include file="WEB-INF/Teacher_header.jsp" %>  
<div class="shadow-lg p-3 mb-5 bg-white rounded"></div><br>


<center><h3>Salary Payment History to Teachers</h3></center>
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
<footer></footer>
</html>