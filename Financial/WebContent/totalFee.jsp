<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Total Fee</title>
</head>
<body>

		<%@ include file="WEB-INF/Student_header.jsp" %> 
		<center><h5>Payment in progress</h5></center>
		<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>
		
		<div class="progress"><div class="progress-bar" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0"
		 aria-valuemax="100">70% Completed</div></div><br><br>
		
		<div class="shadow-lg p-3 mb-5 bg-white rounded"><br>
		
				
		
		
<form action="" method="post" class="form">
				<center><h3>Total Fee</h3></center>
				
				 <center><p>Here is your total payment for your selected subjects.<br>You can use a bank card for the payment<p></center>
				    <div class="form-group">
				      <label for="disabledTextInput">Total fee</label>
				      <input type="text" id="disabledTextInput" class="form-control" disabled>
				    </div>
				
			<hr>
			
			
			<center><br><br><h4>Enter Payment details </h4>
				<P>Enter here your payment details</P></center> 
				 <center><h6>you can use</h6></center>
				 <center><img src="images/pay1.png" class="img-thumbnail" style="width:200px; height:auto;"></center><br>		
				  <div class="form-row">
				    <div class="col-md-6 mb-3">
				      <label>Student No</label>
				      <input type="text" class="form-control" name="uid" required>
				   </div>
				    <div>
				      <label for="validationCustom02">Card No - [9 to 18 digits only]</label>
				      <input type="text" class="form-control" name="cardno"  required>
				    </div>
				  </div>
				  <div>
				    <div class="col-md-6 mb-3">
				      <label for="validationCustom03">Expiery Date </label>
				      <input type="date" class="form-control" name="exp"  required>
				    </div>
				    <div>
				      <label for="validationCustom02">Security Code - [ 3 digits must be there ]</label>
				      <input type="text" class="form-control" name="scode" pattern="[0-9][0-9][0-9]" min="-1" required>
				    </div>
				  </div>
				</div>
				  <center><button class="btn btn-primary btn-lg" onclick="myFunction();" >Pay Now</button></center>
</form>

<script>
function myFunction() {
  alert("Your payment is processing.....!!");
}

</script>
	<hr>
	 
			
			
	</div>
</body>
<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;"><br>
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/log.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
                <p>We are an award-winning Educational Intitue in Kandy for educate our society.</p>
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2020</span><span> </span><span>SLIIT ITP Y2S2</span><span>. </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
              <h5>Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>Nilwala Educational Institue <br>No.25/Kandy Road,<br>Katugasthota</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">nilwalaEdu@gmail.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">081-240 152 3</a> <br><a href="tel:#">081-240 152 4</a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5>Links</h5>
              <ul class="nav-list">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Other</a></li>
                <li><a href="#">Web Site</a></li>
                <li><a href="#">Contacts</a></li>
              </ul>
            </div>
          </div>
        </div>
</footer>
</html>