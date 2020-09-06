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
	
	<center><div class="alert alert-danger" role="alert" style = "width : 50% ">
  		<p>Operation is Successful !!<p><br>
  		 <a href="AdminSubject_home.jsp" class="alert-link" style = "background-color : red">Back to the home page</a>
	</div></center>
	
</body>
<footer></footer>
</html>