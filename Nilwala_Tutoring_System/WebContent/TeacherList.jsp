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
		
	<link rel="stylesheet" href="Admin_styles.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>

<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

	<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></a></li>
		</ul>
	</div>
	<hr><br><br>
	
		<center><table id = sm_tableArea >
				<tr>
					<th>Teacher ID</th>
					<th>Subject Code</th>
					<th>Grade</th>					
					<th>Remove</th>
					
				</tr>
				
				<c:forEach var = "tl" items = "${getTeacherList}">
					<c:set var= "teacher_id" value = "${tl.teacher_id}"/>
					<c:set var= "subject_code" value = "${tl.subject_code }"/>
					<c:set var= "grade" value = "${tl.grade }"/>
					
					
				<c:url value = "RemoveTeacher.jsp" var = "RemoveTeacher">
					<c:param name="teacher_id" value="${teacher_id}"/>
					<c:param name="subject_code" value="${subject_code}"/>
					<c:param name="grade" value="${grade}"/>
				</c:url>
				
				
				<tr>
					<td>${tl.teacher_id}</td>
					<td>${tl.subject_code }</td>
					<td>${tl.grade }</td>
					<td><a class="btn btn-danger btn-medium"  href="${RemoveTeacher }" role ="button" style = "background-color : red">Remove</a></td>
				</tr>
					
				</c:forEach>
	</table></center>
	
	
	
</body>
<footer></footer>
</html>