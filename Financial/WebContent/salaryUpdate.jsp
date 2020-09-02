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
<title>Teacher's Monthly salary updating</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

		<center><h4>Teacher's Monthly Salary Updating</h4></center>

<div class="shadow-lg p-3 mb-5 bg-white rounded">

<form action="sal" method="post">
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom01">Teacher's ID</label>
      <input type="text" class="form-control" name="TID"  required>
     
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom02">Salary Amount</label>
      <input type="text" class="form-control"  name="amount" required placeholder=" LKR/">
     
    </div>
  </div>
  
    <div class="col-md-6 mb-3">
      <label for="validationCustom02">Description</label>
      <input type="text" class="form-control"  name="des" placeholder=" monthly salary updating">
    </div>
     <div class="col-md-6 mb-3">
      <label for="validationCustom02">Type</label>
      <input type="text" class="form-control"  name="ty" placeholder="salary">
     
    </div>
</div>

  <center><input type="submit" class="btn btn-danger" value="Update teacher's account now"></center>
</form>

</div>
	<hr>
</body>
<footer></footer>
</html>