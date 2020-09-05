<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.Insertpagelabel{

color: black;
text-decoration:none;




</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Get  code at fontawesome.com to get icons-->
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
   
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr>

<center><form action="insert" method="post">
  <div class="Schedule-container">
	<h3>Create a Schedule..</h3>
	<p>Please fill this form to create a new schedule....</p>
	<hr>
	
	 <label for="subjectcode"><b>Subject Code:</b></label>
	 <input type="text" placeholder="Enter the subject code" name="subjectcode" id="subjectcode" required><br><br>
	 
	 <label for="teacherId"><b>Teacher's Id:</b></label>
	 <input type="text" placeholder="Enter the techer's Id" name="teacherId" id="teacherid" required><br><br>
	 
	  <label for="ceatedDate"><b>Created Date:</b></label>
	  <input type="date" placeholder="Enter the Created date" name="ceatedDate" id="ceatedDate" required><br><br>
	  
	  <label for="timeFrom"><b>Starting time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeFrom" id="timeFrom" required><br><br>
	
	  <label for="timeFrom"><b>Ending time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeTo" id="timeTo" required><br><br>
	  
	  <label for="classdate"><b>Class date:</b></label><br>
	  <input type="date" placeholder="Enter the Class date" name="classdate" id="classdate" required><br><br>
	  
	  <label for="grade"><b>Grade:</b></label><br>
	  <input type="text" placeholder="Enter the grade" name="grade" id="grade" required><br><br>
	  <hr>
	  
	
	
	 <b><button type="submit" name="submit" value="Schedule a new session" class="addbtn">Schedule a new session</button><br>
	 <br>
	 <br>
	 
	</div>
	
	
	</form></center><br><br>
	
	

	<div class="warning">
   <center><a href="scheduleInsert.jsp">
      <label class="Insertpagelabel">Click here to change Sheduled session details,</label><br><br>
    <button class="success"><span>Change sheduled session deails-> </span></button>
     </a></center><br>
	</div><br><br>
	
	

	<div class = "but2">
	
	 <center><a href="scheduleInsert.jsp">
	 <label class="Insertpagelabel">Click here to ViewSheduled session details,</label><br><br>
    <button class="success"><span> <- Veiw sheduled session details </span></button><br>
     </a></center><br>
      </div>
      
      
     
      





</body>
</html>