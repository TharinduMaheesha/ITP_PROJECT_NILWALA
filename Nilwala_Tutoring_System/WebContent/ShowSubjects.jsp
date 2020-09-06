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
	<hr>
	
	<center><table id = sm_tableArea >
				<tr>
					<th>Subject Code</th>
					<th>Subject Name</th>
					<th>Subject level</th>					
					<th>Remove</th>
					
				</tr>
				
				<c:forEach var = "sub" items = "${subjectDetails}">
					<c:set var= "subject_code" value = "${sub.subject_code}"/>
					<c:set var= "name" value = "${sub.name }"/>
					<c:set var= "level" value = "${sub.level }"/>
					<c:set var= "grade" value = "${sub.grade }"/>
					<c:set var= "medium" value = "${sub.medium }"/>
					<c:set var= "fee" value = "${sub.fee }"/>
					
				<c:url value = "DeleteSubject.jsp" var = "DeleteSubject">
					<c:param name="subject_code" value="${subject_code}"/>
					<c:param name="name" value="${name}"/>
					<c:param name="level" value="${level}"/>
					<c:param name="grade" value="${grade}"/>
					<c:param name="medium" value="${medium}"/>
					<c:param name="fee" value="${fee}"/>
				</c:url>
				
				
				<tr>
					<td>${sub.subject_code}</td>
					<td>${sub.name }</td>
					<td>${sub.level }</td>
					<td><a class="btn btn-danger btn-medium"  href="${DeleteSubject}" role ="button" style = "background-color : red">Remove</a></td>
				</tr>
					
				</c:forEach>
	</table></center>
	
	
	
</body>
<footer></footer>
</html>