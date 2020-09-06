<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
		crossorigin="anonymous">
		
	<link rel="stylesheet" href="teacher_styles.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %> 

	<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr>
	
	<br><br>
	<center><div class="btn-group-vertical" >
		<a class="btn btn-success btn-lg" href="TeacherRegister.jsp" role="button" style = "background-color: green">Register For a Subject</a><br>
		
		<form action = "ShowRegSubjects" method = "post">
		<input type = "hidden" name = "TeacherID" value ="123">        <!-- HARD CODED VALUE -->
		<button class="btn btn-success btn-lg"  type = "submit" style = "background-color: green">View Registered Subjects</a><br>
		</form>
	</div></center>
	 
</body>
<footer></footer>
</html>