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
					<th>Subject Code</th>
					<th>Subject Name</th>
					<th>Teacher ID</th>					
					<th>Fee</th>
					<th>Join</th>
				</tr>
				
				<c:forEach var = "join" items = "${Showgrade}">
					<c:set var= "subject_code" value = "${join.subject_code}"/>
					<c:set var= "name" value = "${join.name }"/>
					<c:set var= "teacher_id" value = "${join.teacher_id }"/>
					<c:set var= "fee" value = "${join.fee }"/>
					
				<c:url value = "StudentJoinCon.jsp" var = "JoinTo">
					<c:param name="subject_code" value="${subject_code}"/>
					<c:param name="name" value="${name}"/>
					<c:param name="teacher_id" value="${teacher_id}"/>
					<c:param name="fee" value="${fee}"/>
				</c:url> 
					
				
				<tr>
					<td>${join.subject_code}</td>
					<td>${join.name }</td>
					<td>${join.teacher_id }</td>
					<td>${join.fee }</td>
					<td><a class="btn btn-primary btn-medium"  href="${JoinTo }" role ="button" style = "background-color : red">Join</a></td>
				</tr>
					
				</c:forEach>
	</table></center><br><br>
	
	<br><br>
	
</body>
<footer></footer>
</html>