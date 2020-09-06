<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
		<br><br>
		<center><form name = "addsubjectform" action = "AddnewSubject" method = "post">
		  <div class="sm_addsubForm"><br>
		  	<h3> Add A New Subject</h3><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Subject Code</label>
		      <input type="text" class="form-control mb-2" name="sub_code" placeholder="Enter subject code" required>
		    </div><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Subject Name</label>
		      <input type="text" class="form-control mb-2" name="sub_name" placeholder="Enter subject name" required>
		    </div><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Level</label>
		      <input type="text" class="form-control mb-2" name="sub_level" placeholder="Advanced level(A/L) or Ordinary Level(O/L)" required>
		    </div><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Grade</label>
		      <input type="text" class="form-control mb-2" name="sub_grade" placeholder="Enter the grade" required>
		    </div><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Medium</label>
		      <input type="text" class="form-control mb-2" name="sub_medium" placeholder="Sinhala medium or English medium" required>
		    </div><br>
		    <div class="col-auto">
		      <label class="sr-only" for="inlineFormInput">Subject Fee</label>
		      <input type="text" class="form-control mb-2" name="sub_fee" placeholder="Enter subject fee" required>
		    </div><br>
		    <div class="col-auto">
		      <button type="submit" class="btn btn-danger" style = "background-color: red" value ="btnAddSub">Add Subject</button><br>
		    </div>
		  </div>
		</form></center>
			
</body>
<footer></footer>
</html>