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
	
			<center><table id = sm_tableArea >
				<tr>
					<th>Subject</th>
					<th>Subject Code</th>
					<th>No of subscriptions</th>				
				</tr>
				
				<tr>
					<td>Science</td>
					<td>SC001</td>
					<td>1100</td>
				</tr>	
				
				<tr>
					<td>Maths</td>
					<td>MA001</td>
					<td>1100</td>
				</tr>
				
				<tr>
					<td>Sinhala</td>
					<td>Si001</td>
					<td>780</td>
				</tr>
				
				<tr>
					<td>.....</td>
					<td>.....</td>
					<td>.....</td>
				</tr>					
		</table><br>
		<a class = "btn btn-danger btn-medium" type = "button" href = "#"  style = "background-color: blue">Download</a><br><br>
		<a class = "btn btn-danger btn-medium" type = "button" href = "AdminSubject_home.jsp"  style = "background-color: blue">Back</a></center>
	
</body>
<footer></footer>
</html>