<%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Subject Cart</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}


/* Set a style for the submit/login button */
.form-container .btn {
  background-color: black;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
</head>
<body>
<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>

<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>
<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30% completed</div></div><br><br>
<hr>
	<center><h4><b>Subject Cart</b> </h4></center>
	<center><P>Check your cart details and click PAY NOW</P></center> 
<div class="shadow-lg p-3 mb-5 bg-white rounded">

<div>
<ul class="breadcrumb"> 
 <li><a href="#"><b></b></a></li>  
</ul>
</div>
<div style = " max-width: 700px;  margin: auto;" class = "background"  class = "transbox" >
<table style = " align : center;">
<div class="table-responsive">
<form>
<table class="table">
 <thead class="tt">
   <tr>  
     <th scope="col">Subject Code</th>
     <th scope="col">Name</th>
     <th scope="col">Level</th>
      <th scope="col">Remove</th>
   </tr>
 </thead>
 <tbody>
<% ArrayList<cart> array = (ArrayList)request.getAttribute("Details");
int i=0;
for(cart car:array){	
%>
   <tr>  
      <td><%=car.getSubjectCode()%></td>
     <td><%=car.getName()%></td>
     <td><%=car.getLevel()%></td>
    	<td>
     <a href="deleteSub.jsp?d=<%=car.getSubjectCode()%>"  onclick="myFunction()">Remove Subject</a>
     </td>
     <% i=i+1;}%>
     </form>   
   </tr>
 </tbody>
</table>
</div>
<hr>



<form method="post" action="payFeeServlet" >

			<br><br><center><h3><b>Total Fee</b></h3></center>
 			<center><p>Here is your total payment for your selected subjects.<br>You can use a bank card for the payment<p></center>
				    <div class="form-group">
				      <center><label for="disabledTextInput">LKR.</label>
				
				      <input type="text" value="<%=i*1000%>" name="totFee" class="alert alert-primary" class="form-control">
				    </center></div>
			<hr>		
			<button class="open-button" onclick="openForm()">View Cart to Pay </button>


			<center><br><br><h4><b>Enter Payment details</b> </h4>
				<P>Enter here your payment details</P></center> 
				 <center><h6>you can use</h6></center>
				 <center><img src="images/pay1.png" class="img-thumbnail" style="width:200px; height:auto;"></center><br>		
				  
<p id="demo">Attention !!!</p>
<button type="button" class="btn btn-outline-danger" onclick='document.getElementById("demo").innerHTML = "Please enter payment details correctly!"'>Click Me!</button><br><br>
				  
	<% ArrayList<cart> arrays = (ArrayList)request.getAttribute("Details2");
for(cart cars:arrays){	
%>				  
				  <div class="form-row">
				    <div class="col-md-6 mb-3">
				      <label>Student No</label>
				      <input type="text" class="form-control" name="uid" value="<%=cars.getStudentid()%>" required>
				   </div> <%}%>
	
				    <div>
				      <label>Card No - [9 to 18 digits only]</label>
				      <input type="text" class="form-control" name="cardno" placeholder="0000-0000-0000" required>
				    </div>
				  </div>
				  <div>
				    <div class="col-md-6 mb-3">
				      <label>Expire Date </label>
				      <input type="date" class="form-control" name="exp"  required>
				    </div>
				    <div>
				      <label>Security Code - [ 3 digits must be there ]</label>
				      <input type="text" class="form-control" name="scode" pattern="[0-9][0-9][0-9]" min="-1" placeholder="3 characters only" required>
				    </div>
				  </div>
				<br><br>
				<center><button class = "batt" type ="submit" name="submit" onclick="myFunction2()" ><b><span>Pay Now</span></b></button></center><br>
	
				  
<br><br>
</form>
<br><br><br><br>
<script>
function myFunction() {
  confirm("Are your sure do you want to remove it? ");
}
function myFunction2() {
  confirm(" Are your sure.. ");
}
</script>
<button class="open-button" onclick="openForm()">Privacy Policies </button>
<div class="form-popup" id="myForm">
  <form class="form-container">
    <h1>Nilwala Educational Institue</h1>
	<p>It's better if you can read them before make payments.</p>
    <button type="submit" class="btn"> privacy polilies on payment</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}


</script>
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</body>
</html>