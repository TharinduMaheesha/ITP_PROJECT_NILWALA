<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Latest Payment Summary Report</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment is successfully finished</h5></center>

<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div></div><br><br>

<div class="shadow-lg p-3 mb-5 bg-white rounded"></div><br>

<center><h4>Your monthly payment was successfully recieved by us</h4></center>
<center><lable>Now you can start learning your selected subjects in this whole month</lable></center><br><br>
	 
<center> <a href="#"><button type="button" class="btn btn-primary btn-lg btn-block">Go to Lessons</button></a></center><br>
  <img src="images/lec.jpg" class="im"><br><br>
 

<center><h5 class="text-light bg-dark">Our Other Financial Services for you</h5></center>
	 <div class="row">
  	<div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check your latest summary report</h5>
        <p class="card-text">Now you can check your latest payment details by clickng below</p>
        <a href="#" class="btn btn-primary">Check</a>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check your past payment summary</h5>
        <p class="card-text">NOw you can check your past payment history by clicking below</p>
        <a href="#"  class="btn btn-danger">Check</a>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Claim a refund</h5>
        <p class="card-text">You can claim a refund after making a payment within next 48 hours.
        	 You should have a valid reason.</p>
        <a href="refundRqst.jsp" class="btn btn-warning">Claim a refund</a>
      </div>
    </div>
  </div>
  

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