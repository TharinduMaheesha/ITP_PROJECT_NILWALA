<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Teachers' channel</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<marquee behavior="scroll" direction="left">Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     |
Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |</marquee>

			<center><h4>Financial Admin's Worksite</h4></center><br>
			<center><div class="spinner-grow text-danger" role="status"><span class="sr-only">Loading...</span></div></center><br>
		<center><h5>Add Monthly Salary </h5></center>
		<center><p>Enter teacher details and salary amount LKR.</p></center>

<div class="shadow-lg p-3 mb-5 bg-white rounded">
	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b></b></a></li>		  
		</ul>
	</div>
	    <center><p class="font-italic" class = "text-success"><b></b></p></center>
		<form action ="AddSalarySev" method = "POST" class="modal-content" required>
		
			 <center><label >Teacher ID </label>
			<input type = "text" size="10" name = "teacherid" required ></center>
			
			<center><label >Transaction ID</label>
			<input type = "text" name = "transactionid"></center>

			
			<center><label >Type </label>
			<input type = "text" name="typee" required></input></center><br>
			
			<center><label >Description</label>
			<textarea type = "text"  name = "descriptionn" required></textarea></center><br>
			
			<center><label >Amount</label>
			<input type = "text"  name = "amountt" required></center>
			
			<center><button class="btn btn-lg btn-danger" ><b>Add Teacher's Salary</button>
			</form>
			</div>

	<hr>
</body>
<footer></footer>
</html>