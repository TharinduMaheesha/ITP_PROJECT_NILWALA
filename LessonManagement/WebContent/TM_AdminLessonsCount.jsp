<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="Admin_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  
	
	<div>
		
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b></b></a></li>
		  
	
			<table class="table">
  <thead class="ttt">
    <tr>
     
      <th scope="col">Teacher's Name</th>
      <th scope="col">Subject Name</th>
      <th scope="col">Count Of The Lessons</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      
      <td>R.I.L Yasanayake</td>
		    <td>Biology</td>
		    <td><b>5</b></td>
    </tr>
   
  </tbody>
</table>

	
</body>
<footer></footer>
</html>