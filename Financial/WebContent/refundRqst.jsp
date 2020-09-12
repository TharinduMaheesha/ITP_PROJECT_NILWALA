<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Send a refund request</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
	<div class="shadow-lg p-3 mb-5 bg-white rounded">
			<center><h4>Send a request to refund</h4></center><br><br>
		<center><h5>Please attention!</h5></center>
		<center><p>To make a refund for a payment should send a refund request within next 48 hours after making payments.<br>
		Otherwise your refund request will not be approved.</p></center>
		
		<form action="" method="post">
		<center><input type ="text"  id="disabledSelect" class="form-control" required ></center><br>
				
		<center><input type ="submit" value="Send Refund Request"  class="btn btn-primary btn-lg"></center>
		</form>
		
		<center><p>If your request was approved we will transfer your money back to your <br>
		provided bank account.Then you will be notified via an email. </p></center>
		
		
		 <br><center><a href="paysucess.jsp" class="btn btn-warning">Back</a></center>
		
		
		<br><br>
	 <center><h4>Or else you can start learning now</h4></center>
<center> <a href="#"><button type="button" class="btn btn-primary btn-lg btn-block">Go to Lessons</button></a></center><br>
  <img src="images/lec.jpg" class="im"><br><br>
		<br><br>
	</div>
	<hr>
	
</body>
<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;"><br>
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/log.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
                <p>We are an award-winning Educational Intitue in Kandy for educate our society.</p>
                <!-- Rights-->
                <p class="rights"><span>�� </span><span class="copyright-year">2020</span><span>�</span><span>SLIIT ITP Y2S2</span><span>.�</span><span>All Rights Reserved.</span></p>
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