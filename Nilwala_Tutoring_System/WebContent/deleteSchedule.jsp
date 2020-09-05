<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr>

    
   <% 
       String schid = request.getParameter("schid"); 
       String subjectcode = request.getParameter("subjectcode");
       String teacherid = request.getParameter("teacherid");
       String createdate = request.getParameter("createdate");
       String timefrom = request.getParameter("timefrom");
       String timeto = request.getParameter("timeto");
       String classdate = request.getParameter("classdate");
       String grade = request.getParameter("grade");
   %>
   
  
   
    <center><form action="delete" method="post">
     <div class="Schedule-container2">
	<h3>Delete my Schedule..</h3>
	<p>You can't change any detail here..!Click delete button to delete your details</p>
	<hr>
	
	   <label for="subjectid"><b>Subject Id:</b></label><br>
       <input type="text" name="schid" value="<%= schid %>" readonly><br>
       
       
       
        <label for="subjectcode"><b>Subject Code:</b></label><br>
       <input type="text" name="subjectcode" value="<%= subjectcode %>" readonly><br><br>
       
       
       
        <label for="teachersid"><b>Teacher's Id:</b></label><br>
       <input type="text" name="techerid" value="<%= teacherid %>" readonly><br><br>
       
       
       
        <label for="createdate"><b>Created date:</b></label><br>
       <input type="date" name="createdate" value="<%= createdate %>" readonly><br><br>
       
       
       
        <label for="timefrom"><b>Time from:</b></label><br>
       <input type="time" name="timefrom" value="<%= timefrom %>" readonly><br><br>
       
       
       
        <label for="timeto"><b>Time to:</b></label><br>
       <input type="time" name="timeto" value="<%= timeto %>" readonly><br><br>
       
       
       
        <label for="classdate"><b>Class date:</b></label><br>
       <input type="date" name="classdate" value="<%= classdate %>" readonly><br><br>
       
       
       
        <label for="grade"><b>grade:</b></label><br>
       <input type="text" name="grade" value="<%= grade %>" readonly><br><br>
       
       <hr>
       
       
       <center><input type="submit" name="submit" value="Delete Session details" class="addbtn"><br></center>
    
    
    </form></center>



</body>
</html>