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

	
	<%
		String TeacherId = request.getParameter("teacher_id");
		String SubjectCode = request.getParameter("subject_code");
		String Grade = request.getParameter("grade");
	%>
	
		<form action = "UnregisterServlet" method = "post">
		      <input type="hidden" class="form-control mb-2" name="TeacherId" value = "<%= TeacherId %>" >
		      <input type="hidden" class="form-control mb-2" name="SubjectCode" value = "<%= SubjectCode %>" >
		      <input type="hidden" class="form-control mb-2" name="Grade" value = "<%= Grade %>" >
		      <center><div class="alert alert-success" role="alert" style = "width : 50% ">
		  		<p>You are going to be unregistered from a subject !! Do you want to continue ???<p><br>
		  		 <button type="submit" class="btn btn-outline-success" >Yes</button><br>
			 </div></center>
		</form>

	 
</body>
<footer></footer>
</html>