<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>
<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>

<div class="progress"><div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div></div><br><br>

<div class="shadow-lg p-3 mb-5 bg-white rounded">
<form>

<c:forEach var="stu" items="${cartDetails}"> 
${stu.level};
${stu.name};
</c:forEach>

		<table class="table table-hover table-dark" class="kl" >
		  <thead>
		    <tr>
		      <th scope="col" class="text-center">Level</th>
		      <th scope="col" class="text-center">Subject</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		    <tr>
		      <td></td>
		      <td></td>
		    </tr>
		  </tbody>
		
		</table>
		<center><input type ="submit" value="Pay Now"  class="btn btn-primary"></center>
		
</form>
	</div>
	<hr>
	 
</body>
<footer>

</footer>
</html>