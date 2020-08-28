<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">

<meta charset="ISO-8859-1">
<title>Check the cart</title>
</head>

<body>
<%@ include file="WEB-INF/Student_header.jsp" %> 

	<center><img src="images\pay1.PNG" class="pop"></center><br>
	<center><label>Check your choices here before continuing the payment process.</label></center><br>
	<div style = "margin-top :20px ;background : rgba(0 ,0 , 0 , 0.5) ; color : white; font-size: 15px; width : 70% ; margin-left: 15%">
	
	<br><br>
	
	
		
		<table style="100%">
			<tr>
				<th>[  ]</th>
				<th>Grade</th>
				<th>Subject</th>
			</tr>
			
			
		</table>
		
		<center><input type="button" value = "Make Payments" class="btn" onclick="checkProfile.jsp"> </center><br>
		<center><input type="button" value = "Go back to the cart" class="btn"></center>
	</div>
	<hr>
	 

	 
	 
</body>
<footer>

</footer>
</html>