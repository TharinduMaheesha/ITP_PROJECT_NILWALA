<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
		  <h3><b>.......Biology.......<b></b></h3>
	</div>
	<table id="lesson">
		  <tr>
		    <th>Lesson</th>
		    <th>Topic</th>
		    <th>View</th>
		  </tr>
		  <tr>
		    <td>01</td>
		    <td>Photosynthesis</td>
		    <td> <button class = "btta">View</button>  </td>
		  </tr>
		  <tr>
		    <td>02</td>
		    <td>Extracting DNA</td>
		    <td><button class = "btta">View</button> </td>
		  </tr>
		  <tr>
		    <td>03</td>
		    <td>The ecology of skin</td>
		    <td><button class = "btta">View</button> </td>
		  </tr>
		  <tr>
		    <td>04</td>
		    <td>Cellular Respiration</td>
		    <td><button class = "btta">View</button> </td>
		  </tr>
		
		 
		</table>	
	<hr>
	 
</body>
<footer></footer>
</html>