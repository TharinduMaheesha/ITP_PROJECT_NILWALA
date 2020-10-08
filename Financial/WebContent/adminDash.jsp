<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="admin_styles.css">
<meta charset="ISO-8859-1">
<title>Financial Admin's Dashboard</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<marquee behavior="scroll" direction="left">Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     | Financial Admin's Worksite   |    Financial Admin's Worksite     |
Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |Financial Admin's Worksite   |    Financial Admin's Worksite     |</marquee>

<div class="container2">
			<center><h2>Financial Admin's Worksite</h2></center>
		<center><h4>Welcome</h4></center>


<!---------------------------------------------------------------- The Modal 1 for students-->
<div class="container">
<hr><br><br><center><button id="myBtn" class = "batt" type ="submit" name="submit"><b><span>Student</span></b></button></center>
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content" >
    <span class="close">&times;</span>
    <center><p>Admin's tasks for Students </p></center>
      <div class="col mb-4">
    <div class="card">
      <div class="card-body">
        <center><h5 class="card-title">Student</h5></center>
        <p class="card-text"></p>
        
			        <form action="ViewAllRefundsServlet" method="post">
			        <center><input type="hidden" name="status" value="pending"></center>
			     
					 <center> <input type="submit" class="btn info" value="Approve / Decline Refund Requests"></center>
					</form>
					
					<br><br>
		<center><button type="button" class="btn info">Check income reports</button></center>
      </div>
    </div>
  </div>
  </div>
</div>

<!---------------------------------------------------- The Modal 2 for teacher-->
<center><button id="myBtn2" class = "batt" type ="submit" name="submit"><b><span>Teacher</span></b></button></center><br><br><br><br><hr><br><br>
<div id="myModal2" class="modal2">
  <!-- Modal content -->
  <div class="modal2-content">
    <span class="close2">&times;</span>
    <center><p>Admin's tasks for Teachers </p></center>
      <div class="col mb-4">
    <div class="card">
      <div class="card-body">
        <center><h5 class="card-title">Teacher</h5></center>
        <p class="card-text"></p>
        
      <center><a href="AddSalary.jsp"><button type="button"  class="btn info">Update teachers' monthly salary</button></a></center><br><br>
	<center><button type="button" class="btn info" >Check salary payment history</button></center><br>
	  <center><button type="button" class="btn info">Check teachers' subjects and subscriptions</button></center><br><br>
      </div>
    </div>
  </div>
  </div>
</div>



<!------------------------------------------------------------------------------------------------------->
</div>
</div>  	

<script>
var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}

span.onclick = function() {
  modal.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
} 
</script>

<script>
var modal2 = document.getElementById("myModal2");
var btn2 = document.getElementById("myBtn2");
var span2 = document.getElementsByClassName("close2")[0];

btn2.onclick = function() {
  modal2.style.display = "block";
}

span2.onclick = function() {
  modal2.style.display = "none";
}

window2.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
} 
</script>
</body>

<footer></footer>

</html>