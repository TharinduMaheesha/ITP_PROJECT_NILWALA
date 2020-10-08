<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Teachers' Monthly Salary Updating</title>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 350px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

.fontdesign{
	color:Black;
  font-weight: bold;
 font-family: Arial, Helvetica, sans-serif;
}
</style>

</head>


<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<marquee behavior="scroll" direction="left">Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     |
Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |</marquee>


<center><h2 class="fontdesign">Add Monthly Salary </h2></center>
<center><p class="fontdesign">Enter teacher details and salary amount LKR</p></center>

 
<form action="AddSalarySev" method="post">
<div class="container">

  <div class="row">
    <div class="col-25">
      <label class="fontdesign">Teacher's ID</label>
    </div>
    <div class="col-75">
      <input type="text"  name="teacherID" placeholder="Enter teacher's ID " required >
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label class="fontdesign">Amount LKR.</label>
    </div>
    <div class="col-75">
      <input type="text" name="amount" placeholder="Monthly salary" required>
    </div>
  </div>
  <br>
  
   <div class="row">
    <div class="col-25">
      <label class="fontdesign">Month</label>
    </div>
    <div class="col-75">
      <select name="month">
      	<option>January</option>
      	<option>February</option>
      	<option>March</option>
      	<option>April</option>
      	<option>May</option>
      	<option>June</option>
      	<option>July</option>
      	<option>August</option>
      	<option>September</option>
      	<option>October</option>
      	<option>November</option>
      	<option>December</option>
      	
      	<>
      </select>
    </div>
  </div>
  <br>
  
  <div class="row">
   <input type="submit" class="btn info" value="Add salary of this month">
  </div>

</div>
	  </form>
</body>

</html>