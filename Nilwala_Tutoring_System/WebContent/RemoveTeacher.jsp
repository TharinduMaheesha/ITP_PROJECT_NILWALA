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
	
		<%
		String TeacherID = request.getParameter("teacher_id");
		String SujectCode = request.getParameter("subject_code");
		String Grade = request.getParameter("grade");
			%>
	
		<center><form name = "addsubjectform" action = "RemoveTeacherServlet" method = "post">
		  <div class="sm_addsubForm"><br>
		  	<h3> Remove Subject</h3><br>
		    <div class="col-auto">
		      <label >teacher ID</label>
		      <input type="text" class="form-control mb-2" name="teacherId" value = "<%= TeacherID %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Subject Code</label>
		      <input type="text" class="form-control mb-2" name="subCode" value = "<%= SujectCode %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Grade</label>
		      <input type="text" class="form-control mb-2" name="sub_grade" value = "<%= Grade %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Are you sure you want to remove the teacher ???</label>
		      <button type="submit" class="btn btn-danger" name ="btnRemove" style = "background-color : red">Remove</button><br>
		    </div>
		  </div>
		</form></center>
	
</body>
<footer></footer>
</html>