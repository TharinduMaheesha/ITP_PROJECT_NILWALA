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
		  <li><a href="#"><b><b></b></a></li>
		</ul>
	</div>
	
	 <table id="lesson">
		  <tr>
		    <th>Subject Name</th>
		    <th>Teacher Name</th>
		    <th>Lessons</th>
		  </tr>
		  <tr>
		    <td>Biology</td>
		    <td>T.M.P Wijekoon</td>
		    <td> <button class = "btta" onclick="window.location.href='TM_studentViewLesson.jsp'">View</button>  </td>
		  </tr>
		  <tr>
		    <td>Physics</td>
		    <td>R.G.K Rathnayake</td>
		    <td><button class = "btta">View</button> </td>
		  </tr>
		  <tr>
		    <td>Chemistry</td>
		    <td>A.J.K Kasthuriarachchi</td>
		    <td><button class = "btta">View</button> </td>
		  </tr>
		 
		 
		</table>	
		<hr>
</body>
<footer></footer>
</html>