<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  
	
	<div>
		
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>
		  <img src=".\images\t1.jpg" class="responsives1"  >		  
		
	<table id="lesson">
		  <tr>
		    <th>Lesson</th>
		    <th>Topic</th>
		    <th>View</th>
		    <th>Delete</th>
		  </tr>
		  <tr>
		    <td>01</td>
		    <td>Photosynthesis</td>
		    <td>  </td>
		    <td>  </td>
		  </tr>
		  <tr>
		    <td>02</td>
		    <td>Extracting DNA</td>
		    <td></td>
		    <td>  </td>
		  </tr>
		  <tr>
		    <td>03</td>
		    <td>The ecology of skin</td>
		    <td></td>
		     <td>  </td>
		  </tr>
		  <tr>
		    <td>04</td>
		    <td>Cellular Respiration</td>
		    <td></td>
		     <td>  </td>
		  </tr>
		
		 
		</table>	
		</ul>
			</div>
	<hr>
				
	
</body>
<footer></footer>
</html>