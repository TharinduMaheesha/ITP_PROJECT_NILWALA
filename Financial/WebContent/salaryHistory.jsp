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


<h3 class="text-center">Salary History</h3>
<p class="text-center">Here is your salary history</p><br><br>
	<hr>
		
		
<div class="shadow-lg p-3 mb-5 bg-white rounded">
	<form>
		<table class="table table-hover table-dark" class="kl" >
		  <thead>
		    <tr>
		      <th scope="col" class="text-center">Month</th>
		      <th scope="col" class="text-center">Amount</th>
		      <th scope="col" class="text-center">Transfered Date</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		    <tr>
		      <td></td>
		      <td></td>
		    </tr>
		  </tbody>
		
		</table>
	
		
</form>
	</div>
		
		
		
		
		
		
	<br><br>
		 <center><a href="#"  class="btn btn-danger" class="btn btn-primary btn-lg">Continue to lessons</a></center>
	<hr>
</body>
<footer></footer>
</html>