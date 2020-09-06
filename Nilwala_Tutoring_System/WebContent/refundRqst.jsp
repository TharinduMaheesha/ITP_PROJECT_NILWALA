<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Send a refund request</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
	<div class="shadow-lg p-3 mb-5 bg-white rounded">

		
		
			<center><h4>Send a request to refund</h4></center><br><br>
		<center><h5>Please attention!</h5></center>
		<center><p>To make a refund for a payment should send a refund request within next 48 hours after making payments.<br>
		Otherwise your refund request will not be approved.</p></center>
		
		<form action="" method="post">
		<center><input type ="text"  id="disabledSelect" class="form-control" required ></center><br>
				
		<center><input type ="submit" value="Send Refund Request"  class="btn btn-primary btn-lg" style = "background-color: blue"></center>
		</form>
		
		<center><p>If your request was approved we will transfer your money back to your <br>
		provided bank account.Then you will be notified via an email. </p></center>
		
		
		 <br><center><a href="paysucess.jsp" class="btn btn-warning" style = "background-color: blue">Back</a></center>
		
		
		<br><br><div class="container">
		<h4>OR you can start learning now</h4>
  				<img src="images/lec.jpg" alt="Snow">
  				<button class="btn" style = "background-color: blue">Go to Lessons</button>
		</div><br><br>
	</div>
	<hr>
	
</body>
<footer>

</footer>
</html>