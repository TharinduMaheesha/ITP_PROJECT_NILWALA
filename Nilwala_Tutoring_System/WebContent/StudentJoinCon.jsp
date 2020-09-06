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
		  <li><a href="#"><b>Home<b></a></li>
		</ul>
	</div>
	<hr>
	<br>
	
<%
		String subjectCode = request.getParameter("subject_code");
		String teacherID = request.getParameter("teacher_id");	
		
	%>
	
	<div align = "left">
		<form  action = "JoinToASubjectServlet" method = "post">
		      <input type="hidden" class="form-control mb-2" name="s_code" value = "<%= subjectCode %>" >
		      <input type="hidden" class="form-control mb-2" name="t_id" value = "<%= teacherID %>">
		      <input type="hidden" class="form-control mb-2" name="stu_ID" value = "322" ><br><br> <!-- HARD CODED VALUE -->
		      <input type="hidden" class="form-control mb-2" name="pay" value = "0"> <!-- HARD CODED VALUE -->
		      <center><h2> Join now -->>></h2><br>
		      <button type="submit" class="btn btn-primary btn-lg">Join</button></center>
		</form>
	</div>
	
	<div><img src="images/student.png" class="rounded float-right" width ="30%" height ="30%" ></div>
	
	
	
</body>
<footer></footer>
</html>