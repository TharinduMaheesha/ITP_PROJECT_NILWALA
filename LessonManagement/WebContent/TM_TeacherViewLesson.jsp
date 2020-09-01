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
			<%
			String teacher_id = request.getParameter("teacherid");
			String subject_code = request.getParameter("subjectcode");
			String lesson_no = request.getParameter("lessonno");
			String lesson_name = request.getParameter("lessonname");
			String material = request.getParameter("material");
			%>
			
			<div style = " max-width: 500px;  margin: auto;" class = "background"  class = "transbox">
	
			<table style = " max-width: 500px;  margin: auto;">
				<tr>
					<td>Your ID</td>
					<td><input name="type" value="<%= teacher_id %>" readonly/></td>
				</tr>
				<tr>
					<td>Subject Code</td>
					<td><input  name="pid" value="<%= subject_code %>" readonly/></td>
				</tr>
					<tr>
					<td>Lesson Number</td>
					<td><input  name="pid" value="<%= lesson_no %>" readonly/></td>
				</tr>
				<tr>
					<td>Topic Of The Lesson</td>
					<td><input  name="fn" value="<%= lesson_name %>"readonly/></td>
				</tr>
				<tr>
					<td>Material</td>
					<td><input name="ln" value="<%= material %>"readonly/></td>
				</tr>
	
			</table>	
			</div>
				<c:url value="TM_TeacherViewLesson.jsp" var="addupdate">
				<c:param name="teacher_id" value="${teacherid}"/>
				<c:param name="subjectcode" value="${subject_code}"/>
				<c:param name="lesson_no" value="${lesson_no}"/>
				<c:param name="lesson_name" value="${lessonname}"/>
				<c:param name="material" value="${material}"/>
				</c:url>
			
			<a href ="${addupdate}">
			<center><input type = "button" name = "Update" value ="View Lesson" class = "btta" class = "list-button">
			
			</a>
</body>
</html>