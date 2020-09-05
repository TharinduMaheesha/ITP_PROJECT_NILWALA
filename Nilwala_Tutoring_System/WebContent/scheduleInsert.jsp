<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Get  code at fontawesome.com to get icons-->
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<style>

.Insertpagelabel{

color: black;
text-decoration:none;
}

.btn1{

position:relative;
left:40px;
top:40px;
colour:red

}

.btn2{

position:relative;
left:1050px;
top:-60px;
colour:red

}

.InsertBtn{
border: none;
background-color: #009900;
border-color:#006600;
border-radius:10px;
  color: black;
  padding: 10px 15px;
  font-size: 14px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
 } 
 
 .wrnmassage{
 position:relative;
 color:  #2eb82e;
 font-size: 18px;
 
 
 
 }


</style>
   
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="ScheduleHome.jsp"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr><br>
	
	
	<center><div class="wrnmassage">
	<i class="material-icons" style="font-size:30px;color: red">error</i>
	<label><b>You must delete your previous week's schedule to create a new schedule...!!!<b></label><br>
	</div><br><br></center>

<center><form action="insert" method="post">
  <div class="Schedule-container">
	   <h3>Create a  new schedule..</h3>
	          <p>Please fill this form to create a new schedule....</p>
	   <hr>
	
	 <label for="subjectcode"><b>Subject Code:</b></label>
	 <input type="text" placeholder="Enter the subject code" name="subjectcode" id="subjectcode" required><br><br>
	 
	 <label for="teacherId"><b>Teacher's Id:</b></label>
	 <input type="text" placeholder="Enter the techer's Id" name="teacherId" id="teacherid" required><br><br>
	 
	  <label for="ceatedDate"><b>Creating Date:</b></label>
	  <input type="date" placeholder="Enter the Created date" name="ceatedDate" id="ceatedDate" required><br><br>
	  
	  <label for="timeFrom"><b>Starting time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeFrom" id="timeFrom" required><br><br>
	
	  <label for="timeFrom"><b>Ending time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeTo" id="timeTo" required><br><br>
	  
	  <label for="classdate"><b>Class conducting date:</b></label><br>
	  <input type="date" placeholder="Enter the Class date" name="classdate" id="classdate" required><br><br>
	  
	  <label for="grade"><b>Grade:</b></label><br>
	  <input type="text" placeholder="Enter the grade" name="grade" id="grade" required><br><br>
	  <hr>
	  
	
	
	 <b><button type="submit" name="submit" value="Schedule a new session" class="addbtn">Schedule a new session</button><br>
	 <br>
	 <br>
	 
 </div>
	
</form></center><br><br>
	
	  
	  <div class = "btn1">
	  <label>Click here to veiw all session details..,</label><br><br>
     <a href="ViewAllSessionDetails.jsp">
      <button class="InsertBtn"><span><b>View all scheduled session details</b> </span></button>
     </a><br>
     </div><br><br>

     <div class = "btn2">
     <label>Click here to change all the session details,</label><br><br>
     <a href="login.jsp">
      <button class="InsertBtn"><span><b>Change sheduled session details</b> </span></button>
     </a><br>
     </div>





</body>
</html>