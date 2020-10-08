<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Checking account balance</title>
</head>
<body>
<%@ include file="WEB-INF/Teacher_header.jsp" %>  
<div class="shadow-lg p-3 mb-5 bg-white rounded"></div><br>


<h3 class="text-center">Check Account Balance</h3>
<center><div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div></center>
<p class="text-center">Here is your monthly account balance which has already transfered to your provided bank account</p><br><br>
	<hr>
		<form style="margin-left:250px; margin-right:250px; text-align:center;" >
			
			<lable>Amount</lable>
		  <input class="form-control form-control-lg" type="text" disabled >
		  
		  <lable>Month</lable>
		<input class="form-control" type="text" disabled>
		
		<lable>Trasnfered Date</lable>
		<input class="form-control form-control-sm" type="text" disabled>
		
		<br><br>
		 <a href="#"  class="btn btn-danger">Continue to lessons</a>
		</form>
	
	<hr>
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</body>
</html>