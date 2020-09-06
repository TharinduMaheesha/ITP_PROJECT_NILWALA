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
	<style type="text/css">
	

	

.bttll {
  background-color: #32CD32; /* Green */
  border: none;
  color: white;
  padding: 12px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  font-weight : bold;
}
.bttll:hover {
  background-color: red;
  color: white;
}
	</style>
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
	
	<center><div class="btn-group-vertical" >
		<a class="bttll" href="AddSubject.jsp" role="button" style="background-color : maroon; ">Add Subject</a><br>
		<a class="bttll" href="RemoveSubject.jsp" role="button" style="background-color : maroon; ">Remove Subject</a><br>
		<form action ="GetTeacherList"  method = "post">
		<button class = "bttll" type = "submit" style="background-color : maroon; " >Remove Teacher</button>
		</form><br>
		<a class="bttll" href="SubscribedSubjectList.jsp" role="button" style="background-color : maroon; ">Most subscribed Subjects</a><br>
	</div></center>
	
</body>
<footer></footer>
</html>