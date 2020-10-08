<%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>
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
<title>Payment is success</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment is successfully finished</h5></center>

<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div></div><br><br>


 <center><img src="images/tik.png" class="img-thumbnail" style="width:200px; height:auto;"></center><br>	
<center><h4>Your monthly payment was successfully recieved by us</h4></center>
<center><lable>Now you can start learning your selected subjects in this whole month</lable></center><br><br>
	 
<center> <a href="#"><button type="button" class="btn btn-primary btn-lg">Go to Lessons</button></a></center><br>
  
  
<div class="shadow-lg p-3 mb-5 bg-white rounded"></div><br>
 
 

 
<div>
<img src="images/lec.jpg" class="im"><br><br>
</div>
<center><h5 class="text-light bg-dark">Our Other Financial Services for you</h5></center>
	
	
	   
  <form action="payOkToRefundServlet" method="post">
  
  
					<% ArrayList<cart> arrays = (ArrayList)request.getAttribute("Details3");
					for(cart cars:arrays){	
					%>	  
					<div class="form-row">
				    <div class="col-md-6 mb-3">
				      <label>Student No</label>
				      <input type="text" class="form-control" name="uid" value="<%=cars.getStudentid()%>" readonly>
				   </div> 
				   <%}%>
				   </div>
				   
	 <div class="row">
  	<div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check your latest summary report</h5>
        <p class="card-text">Now you can check your latest payment details by clicking below</p>
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
        <input type="submit" class="btn btn-warning" value="Claim a refund">
      </div>
    </div>
  </div>
</div>

</form>
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</body>
</html>