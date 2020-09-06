<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Admin_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">

<meta charset="ISO-8859-1">
<title>Financial Admin's Dashboard</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<marquee behavior="scroll" direction="left">Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     |
Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |</marquee>

			<center><h4>Financial Admin's Worksite</h4></center><br>
			<center><div class="spinner-grow text-danger" role="status"><span class="sr-only">Loading...</span></div></center><br>
		<center><h5>Welcome</h5></center>

<div class="shadow-lg p-3 mb-5 bg-white rounded">

<div class="row row-cols-1 row-cols-md-2">
  <div class="col mb-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Student</h5>
        <p class="card-text"></p>
        
        <button type="button" class="btn btn-lg btn-danger" data-toggle="popover">Approve Decline Refund Requests</button><br>
		<br>
		<button type="button" class="btn btn-lg btn-danger" data-toggle="popover">Check income reports</button>
      </div>
    </div>
  </div>
  
  <div class="col mb-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Teacher</h5>
        <p class="card-text"></p>
        	   <a href="AddSalary.jsp"> 
        	   <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" >Update teachers' monthly salary</button>
        	   </a><br><br>
			  <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" >Check salary payment history</button><br><br>
		
			  <button type="button" class="btn btn-lg btn-danger" data-toggle="popover">Check teachers' subjects and subscriptions</button><br><br>
      </div>
    </div>
  </div>
</div><br>
	<hr>
</body>
<footer></footer>
</html>