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
<center><input type ="text" class="form-control"  name="studentid" min="-1"></center><br><br>

<center><input type ="submit" name="submit" value="view cart" onclick="myFunction()" class="btn btn-primary"></center>
</form>


  </div>
</div>



<script>
function myFunction() {
  confirm("Are you sure ?");
}
</script>

</script>
</div>
<hr>

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</body>
</html>