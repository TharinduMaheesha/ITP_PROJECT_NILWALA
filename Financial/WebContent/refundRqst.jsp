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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.3/css/bootstrap.min.css" integrity="sha384-MIwDKRSSImVFAZCVLtU0LMDdON6KVCrZHyVQQj6e8wIEJkW4tvwqXrbMIya1vriY" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Send a refund request</title>  
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
	<div class="shadow-lg p-3 mb-5 bg-white rounded">
			<center><h4>Send a request to refund</h4></center><br><br>
		<center><h5>Please attention!</h5></center>
		<center><p>To make a refund for a payment should send a refund request within next 48 hours after making payments.<br>
		Otherwise your refund request will not be approved.</p></center>
		
		
				
		
		<form action="refundServlet" method="post">
			<center>
			<lable>Select your reason to refund</lable>
			<select class="form-control"  name="reason">
				<option >I am unsatisfied about your service</option>
					<option >I can not participate to lesson in this month</option>
						<option >Payment is a mistake</option>
							<option >I'll come back in next month</option>
								<option >I have a money problem</option>
									<option >Card problem</option>
									<option >other</option>
			</select>
			<br><center>
			
				<% ArrayList<cart> arrays = (ArrayList)request.getAttribute("Details4");
					for(cart cars:arrays){	
					%>	  
					<div class="form-row">
				    <div class="col-md-6 mb-3">
				      <label>Student No</label>
				      <input type="text" class="form-control" name="uid" value="<%=cars.getStudentid()%>" readonly>
				   </div> <%}%>
			 </div></center>
						<br><br>
			<center><input type ="submit" value="Send Refund Request"  class="btn btn-primary btn-lg"></center>
		</form>
		
	<br>	
		
		<center><p>If your request was approved we will transfer your money back to your <br>
		provided bank account.Then you will be notified via an email. </p></center>
		
		
		 <br><center><a href="paysucess.jsp" class="btn btn-warning" id="success" class="button">Back</a></center>

		<br><br>
	 <center><h4>Or else you can start learning now</h4></center>
<center> <a href="#"><button type="button" class="btn btn-primary btn-lg btn-block">Go to Lessons</button></a></center><br>
  <img src="images/lec.jpg" class="im"><br><br>
		<br><br>
	</div>
	<hr>
	


<button class="open-button" onclick="openForm()">Privacy Policies </button>
<div class="form-popup" id="myForm">
  <form class="form-container">
    <h1>Nilwala Educational Institue</h1>
	<p>It's better if you can read them before send a refund request.</p>
    <button type="submit" class="btn"> privacy polilies on Refunding</button>
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