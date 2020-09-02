<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b></b></a></li>		  
		</ul>
	</div>
	    <center><p class="font-italic" class = "text-success"><b>Add Lessons</b></p></center>
		<form action ="TM_AddLessonServlet" method = "POST" class="modal-content" required>
		
			 <center><label for="first name" >Teacher ID :</label>
			<input type = "text" size="10" id = "tid" name = "teacherid" required ></center>
			
			<center><label for="first name" >Subject Code :</label>
			<input type = "text" id = "scode" name = "subjectcode"></center>
		
			<center><label for="Last name" >Lesson Number :</label>
			<input type = "text" id = "lno" name = "lessonno" placeholder="ex : 01"required></center>
			
			<center><label for="Last name" >Lesson Name :</label>
			<input type = "text" id = "lno" name = "lessonname" placeholder="Enter the name of the lesson"required></center>
			
			<center><label for="Last name" >Materials :</label>
			<textarea type = "text" id = "mat"  name = "material" placeholder="Enter the materials"required></textarea></center><br>
			
			<center><button class ="btn btn-success"><b>Add The Lesson</button>
			<button class ="btn btn-outline-danger" class="reset-button">Reset The Details</b></button></center><br>
			</form>
			</div>

	<hr>
</body>
<footer></footer>
</html>