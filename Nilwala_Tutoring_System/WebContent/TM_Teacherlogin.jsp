<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="lakshiz.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
<body>
	

	
		<form action="TM_TeacherLoginSer" method="post">
		
		  <div class="form-group" style = "margin: auto ; width: 80%">
		    <label for="exampleInputPassword1">Subject Code :</label>
		    <input type="text" class="form-control" id="subjectcode" name="subjectcode" placeholder="subject code..">
		  </div>
		  <br>
		  <button type="submit" class="btn btn-primary" style = "background-color: green; width : 50% ; margin-left: 300px">Submit</button>
		</form>
	

</body>
</html>