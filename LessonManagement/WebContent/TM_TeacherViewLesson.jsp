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
			      <th scope="col">Subject Code</th>
			      <th scope="col">Lesson Number</th>
			      <th scope="col">Lesson Topic</th>
			   
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      
			      <td>${tea.lesson_no}</td>
			      <td>${tea.subject_code}</td>
			      <td>${tea.lesson_no}</td>
			      <td>${tea.lesson_name}</td>
			     
			    </tr>
		
			  </tbody>
			</table>
			</c:forEach>
			</div>
		
			<a href ="${addupdate}">
			<center><input type = "button" name = "Update" value ="View Lesson" class = "btta" class = "list-button">
			
			</a>
</body>
</html>