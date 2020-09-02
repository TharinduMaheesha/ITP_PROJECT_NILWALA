<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>View cart</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
	<div class="shadow-lg p-3 mb-5 bg-white rounded">

		<form action="user" method="post">
		
			<center><lable>Enter your ID number to continue</lable></center>
			<center><input type ="text" name="studentID" required ></center><br><br>
			<center><input type ="submit" value="view cart" class="btn btn-primary"></center>
		
		</form>
	</div>
	<hr>
	
</body>
<footer>

</footer>
</html>