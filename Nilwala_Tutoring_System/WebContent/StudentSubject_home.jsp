<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		
	<link rel="stylesheet" href="student_styles.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

	<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr>
	
	<br><br>
	<center><div class="btn-group-vertical" >
		<a class="btn btn-primary btn-lg" href="StudentSearchSubjects.jsp" role="button" style = "background-color : blue">Join For a Subject</a><br>
		
		<form action = "StudentsJoinedSubs" method = "post">
			<input type = "hidden" name = "studentID" value ="0322">        <!-- HARD CODED VALUE -->
			<button class="btn btn-primary btn-lg"  type = "submit" style = "background-color : blue">View Your Subjects</a><br>
			
		</form>
	</div></center>
	 
</body>
<footer></footer>
</html>