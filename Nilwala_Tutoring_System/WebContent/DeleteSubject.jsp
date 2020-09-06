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
	
	<%
		String subjectCode = request.getParameter("subject_code");
		String subjectName = request.getParameter("name");
		String subjectlevel = request.getParameter("level");
		String subjectgrade = request.getParameter("grade");
		String subjectMedium = request.getParameter("medium");
		String subjectFee = request.getParameter("fee");
	%>
	
		<center><form name = "addsubjectform" action = "DeleteSubject" method = "post">
		  <div class="sm_addsubForm"><br>
		  	<h3> Remove Subject</h3><br>
		    <div class="col-auto">
		      <label >Subject Code</label>
		      <input type="text" class="form-control mb-2" name="sub_code" value = "<%= subjectCode %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Subject Name</label>
		      <input type="text" class="form-control mb-2" name="sub_name" value = "<%= subjectName %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Level</label>
		      <input type="text" class="form-control mb-2" name="sub_level" value = "<%= subjectlevel %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Grade</label>
		      <input type="text" class="form-control mb-2" name="sub_grade" value = "<%= subjectgrade %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Medium</label>
		      <input type="text" class="form-control mb-2" name="sub_medium" value = "<%= subjectMedium %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Subject Fee</label>
		      <input type="text" class="form-control mb-2" name="sub_fee" value = "<%= subjectFee %>" readonly>
		    </div><br>
		    <div class="col-auto">
		      <label >Are you sure you want to remove the subject ???</label>
		      <button type="submit" class="btn btn-danger" name ="btnRemove" style = "background-color : red">Remove</button><br>
		    </div>
		  </div>
		</form></center>
	
	
	
</body>
<footer></footer>
</html>