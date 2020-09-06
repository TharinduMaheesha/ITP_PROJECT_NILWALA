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
		<center><table id = sm_tableArea >
				<tr>
					<th>Your ID</th>
					<th>Subject Code</th>
					<th>Teacher ID</th>				
					<th>Payment status</th>
					
				</tr>
				
				<c:forEach var = "student" items = "${joinedSubjects}">
					<c:set var= "student_id" value = "${student.student_id}"/>
					<c:set var= "subject_code" value = "${student.subject_code }"/>
					<c:set var= "teacher_id" value = "${student.teacher_id }"/>
					<c:set var= "payment_status" value = "${student.payment_status }"/>
					
				
				<tr>
					<td>${student.student_id}</td>
					<td>${student.subject_code }</td>
					<td>${student.teacher_id }</td>
					<td>${student.payment_status }</td>
				</tr>
					
				</c:forEach>
	</table></center><br><br>
	
	<a href="StudentSubject_home.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" float = "right" style = "background-color : red">Back</a>
	
	<br><br>
	
</body>
<footer></footer>
</html>