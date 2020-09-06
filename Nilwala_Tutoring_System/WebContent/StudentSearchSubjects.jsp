<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div class="row">
	  <div class="col-sm-6">
	    <div class="card">
	      <div class="card-body">
	      	<h4>Search the grade and the medium You want to join</h4><br><br>
				<form action = "ShowSubjectsToJoinServ" method = "post">
				<div class="form-group row">
				    <label  class="col-sm-2 col-form-label">Grade</label>
				    <div class="col-sm-10">
				      <input  class="form-control" name = "getGrade" placeholder="Enter grade you want to join" required>
				    </div>
				 </div>
				 
				 <div class="form-group row">
				    <label  class="col-sm-2 col-form-label">Medium</label>
				    <div class="col-sm-10">
				      <input class="form-control" name = "getMedium" placeholder="Enter Medium" required>
				    </div>
				 </div><br><br>
		 		<input class="btn btn-primary btn-lg" type="submit" value="Search subjects" style = "background-color: blue"><br><br>
		 		</form>
	      </div>
	    </div>
	  </div><br><br>
	  
	    <div class="col-sm-6">
	    <div class="card">
	      <div class="card-body">
	      	<br><br>
	        <img src = "images/book.png" height = 90% width = 80%>
	      </div>
	    </div>
	  </div>
	</div>
	 
</body>
<footer></footer>
</html>