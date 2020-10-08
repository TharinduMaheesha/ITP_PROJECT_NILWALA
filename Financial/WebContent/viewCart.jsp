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
<title>View cart</title>
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

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #428df5;
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

<center><h4>Your Subjects</h4></center>
<div class="card">
  <div class="card-header">
    You can view your selected subject
  </div>
  <div class="card-body">
    <h5 class="card-title">Start learning now after the payment</h5>
<form action="viewCartServlet" method="post">
<center><lable>Enter your ID number to continue :</lable></center>
<center><input type ="text" class="form-control"  name="studentid" min="-1" placeholder="Enter your student ID of Nilwala Institue" required></center><br><br>

	<center><button class = "batt" type ="submit" name="submit" ><b><span>View Cart</span></b></button></center><br>
</form>


  </div>
</div>

</div>
<hr>
<button class="open-button" onclick="openForm()">View Cart to Pay </button>

<div class="form-popup" id="myForm">
  <form  action="viewCartServlet" method="post" class="form-container">
    <h1>Pay fast & Secure</h1>


    <label><b>Enter your ID number to continue</b></label>
    <input type="text" name="studentid" placeholder="Enter your student ID of Nilwala Institue" required>

    <button type="submit" class="btn">View Cart</button>
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