<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Make_Appointment.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><b>Make Appointment<b></b></li>
		</ul>
	</div>
	<hr>
	
	
	<div>
		<p> 1)Please fill the form to make an appointment to attend a physical classroom.<br><br>
		    2)Clearly mention your reason in order to get permission to attend the respective class.</p>
	</div>
	<div class="main">
		<form>
		
			
				
				
				
	
				
				
				<label>Grade :</label>
				<input type="text" name="Grade" size="50"><br><br>
				
				<label>Subject :</label>
				<input type="text" name="Subject" size="50"><br><br>
				
				<label>Level :</label>
				<input type="text" name="Level" size="50"><br><br>
				
				<label for="Reason">Reason :</label> 

				<textarea id="Reason" name="Reason" rows="11" cols="50">

				</textarea>
		
				
				
				
				
	
			
			<div  class="mkbutt">
			
				<button class="wmbut" type="button">Send Request</button>
			
				<button  class="wmbut"type="button">Cancel</button>
				
		
			
			</div>
		</form>
	</div>
	
	<hr>
	 
</body>
<footer></footer>
</html>