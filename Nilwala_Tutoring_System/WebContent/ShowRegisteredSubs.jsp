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
		<center><table id = sm_tableArea >
				<tr>
					<th>Your ID</th>
					<th>Subject Code</th>
					<th>Grade</th>					
					<th>Unregister</th>
				</tr>
				
				<c:forEach var = "rs" items = "${RegisteredSubList}">
					<c:set var= "teacher_id" value = "${rs.teacher_id}"/>
					<c:set var= "subject_code" value = "${rs.subject_code }"/>
					<c:set var= "grade" value = "${rs.grade }"/>
					
					
				<c:url value = "Unregister.jsp" var = "UnregisterFrmSub">
					<c:param name="teacher_id" value="${teacher_id}"/>
					<c:param name="subject_code" value="${subject_code}"/>
					<c:param name="grade" value="${grade}"/>
				</c:url> 
				
				
				<tr>
					<td>${rs.teacher_id}</td>
					<td>${rs.subject_code }</td>
					<td>${rs.grade }</td>
					<td><a class="btn btn-success btn-medium"  href="${UnregisterFrmSub}" role ="button" style = "background-color: green">Unregister</a></td>
				</tr>
					
				</c:forEach>
	</table></center>
	
	 
</body>
<footer></footer>
</html>