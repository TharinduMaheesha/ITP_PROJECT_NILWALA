<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
	
		<form action ="TM_AddLessonServlet" method = "POST" class="modal-content" >
		
			<center><h4>Add Lessons</h4></center>
			 <center><label for="first name" >Teacher ID</label><br>
			<input type = "text" id = "tid" name = "teacherid" ></center><br>
			
			<center><label for="first name" >Subject Code</label><br>
			<input type = "text" id = "scode" name = "subjectcode"></center><br>
		
			<center><label for="Last name" >Lesson Number</label><br>
			<input type = "text" id = "lno" name = "lessonno" placeholder="ex : 01"required></center><br>
			
			<center><label for="Last name" >Lesson Name</label><br>
			<input type = "text" id = "lno" name = "lessonname" placeholder="Enter the name of the lesson"required></center><br>
			
			<center><label for="Last name" >Materials</label><br>
			<textarea type = "text" id = "mat"  name = "material" placeholder="Enter the materials"required></textarea></center><br>
			
			<center><input type="submit" class ="bttaa" value="Add" class="add-button" /><br><br>
			<input type="reset" class ="bttll" value="Reset Details" class="reset-button" /><br><br></center>
			</form>
			</div>
			
	<hr>
</body>
<footer></footer>
</html>