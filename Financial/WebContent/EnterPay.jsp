<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Enter payment details</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>
<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>
<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div></div><br><br>

<div class="shadow-lg p-3 mb-5 bg-white rounded"><br>

		<center><br><br><h4>Enter Payment details </h4>
<P>Enter here your payment details</P></center> 

	<form acion="EnterPayDeSev" method="post">
	
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label>Student No</label>
      <input type="text" class="form-control" name="uid" required>
   </div>
    <div>
      <label for="validationCustom02">Card No</label>
      <input type="text" class="form-control" name="cardno" required>
    </div>
  </div>
  <div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Expiery Date </label>
      <input type="text" class="form-control" name="exp"  required>
    </div>
    <div>
      <label for="validationCustom02">Security Code</label>
      <input type="text" class="form-control" name="scode" required>
    </div>
  </div>
</div>

  <center><input type="submit" class="btn btn-danger" type="submit" value="Pay Now"></center>
</form>


	<hr>
	 
</body>
<footer>

</footer>
</html>