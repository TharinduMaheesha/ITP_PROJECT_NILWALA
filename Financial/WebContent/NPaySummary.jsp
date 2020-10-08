<%@page import="com.cart.cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Latest Payment Summary Report</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div class="shadow-lg p-3 mb-5 bg-white rounded"><br>

<form class="form">
<center><h3>Latest Payment Summary Report</h3></center>
  <fieldset disabled>
    <div class="form-group">
      <label for="disabledTextInput">Student's Name</label>
      <%= %>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    
    <div class="form-group">
      <label for="disabledSelect">Month</label>   
       <input type="text" id="disabledSelect" class="form-control">
    </div>
    
     <div class="form-group">
      <label for="disabledSelect">Number of subjects</label>
          <input type="text" id="disabledSelect" class="form-control">
    </div>
    
     <div class="form-group">
      <label for="disabledSelect">Total Fee</label>
           <input type="text" id="disabledSelect" class="form-control">
    </div>
    
     <div class="form-group">
      <label for="disabledSelect">Paid Date</label>
      <input type="text" id="disabledSelect" class="form-control">
    </div><br>
 
 <h6>you can claim a refund within next 48 hours only</h6>
    <button type="button" class="btn btn-primary">Claim a refund</button><br><br>
       <button type="button" class="btn btn-primary">Back</button><br><br>
    <center><button type="button" class="btn btn-primary">GO TO LESSONS</button></center>
  </fieldset>
</form>
	<hr>
	 
</body>
<footer>

</footer>
</html>