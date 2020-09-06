<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Total Fee</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>
<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>

<div class="progress"><div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0"
 aria-valuemax="100">50%</div></div><br><br>

<div class="shadow-lg p-3 mb-5 bg-white rounded"><br>

<form class="form">
<center><h3>Total Fee</h3></center>
  <fieldset disabled>
 <center><p>Here is your total payment for your selected subjects.<br>You can use a bank card for the payment<p></center>
    <div class="form-group">
      <label for="disabledTextInput">Total Fee</label>
      <input type="text" id="disabledTextInput" class="form-control" >
    </div>
    
 
 <h6>you can use</h6>
 <img src="images/pay1.png" class="img-thumbnail" style="width:200px; height:auto;">
   
  </fieldset>
</form>
    <center><button type="button" class="btn btn-primary btn-lg" style = "background-color: blue" onclick = "window.location.href='EnterPay.jsp'">Pay Now</button></center>

	<hr>
	 
</body>
<footer>

</footer>
</html>