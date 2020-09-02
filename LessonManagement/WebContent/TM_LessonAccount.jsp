<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
	<div style = " max-width: 700px;  margin: auto;" class = "background"  class = "transbox" >
	<table style = " align : center;">
	<div class="table-responsive">
	
				<c:forEach var="tea" items="${teaDetails}">
				<c:set var="teacherid" value="${tea.teacher_id}"/>
				<c:set var="subjectcode" value="${tea.subject_code}"/>
				<c:set var="lessonno" value="${tea.lesson_no}"/>
				<c:set var="lessonname" value="${tea.lesson_name}"/>
				
			<table class="table">
			  <thead class="thead-dark">
			    <tr>
			      
			      <th scope="col">Lesson Number</th>
			      <th scope="col">Lesson Name</th>
			      <th scope="col">View Lesson</th>
			      <th scope="col">Delete Lesson</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      
			      <td>${tea.lesson_no}</td>
			      <td>${tea.lesson_name}</td>
			      
			 	 <form method = "POST" action = "TM_AddLesson.jsp">
			      <td><button type="button" class="btn btn-outline-success" ><b>View</b></button></td>
			     </form> 
			      <td><button type="button" class="btn btn btn-outline-danger" ><b>Delete The Lesson</b></button></td>
			      
			    </tr>
		
			  </tbody>
			</table>
			</c:forEach>
			</div>
		
			 <form method = "POST" action = "TM_AddLesson.jsp">
			  <center><button class = "tablinks" onclick="facility(event, 'ph')"><b><span>Add A New Lesson</b></span></button>
			  </form>
	
		
<hr	>
</body>
</html>