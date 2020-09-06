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
		
			 <center><label style = "width : 50% ; background-color: maroon">Teacher ID </label>
			<input type = "text" size="10" name = "teacherid" required style = "width : 50%  ; border: 3px solid black" ></center>
			
			<center><label style = "width : 50% ; background-color: maroon">Transaction ID</label>
			<input type = "text" name = "transactionid" style = "width : 50%  ; border: 3px solid black"></center>

			
			<center><label style = "width : 50% ; background-color: maroon">Type </label>
			<input type = "text" name="typee" required style = "width : 50%  ; border: 3px solid black"></input></center><br>
			
			<center><label style = "width : 50% ; background-color: maroon">Description</label><br>
			<textarea type = "text"  name = "descriptionn" required style = "width : 50%  ; border: 3px solid black"></textarea></center><br>
			
			<center><label style = "width : 50% ; background-color: maroon">Amount</label>
			<input type = "text"  name = "amountt" required style = "width : 50%  ; border: 3px solid black"></center>
			
			<center><button class="btn btn-lg btn-danger" style = "background-color: red;"><b>Add Teacher's Salary</button>
			</form>
			</div>

	<hr>
</body>
<footer></footer>
</html>