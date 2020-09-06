<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="ScheduleHome.jsp"><b>Home</b></a></li>		  
		</ul>
	</div>
	<br>



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
   
  
 <center><form action="update" method="post">
   <div class="Schedule-container2">
	 <h3>Update My Schedule</h3>
	   <p>Enter the details that you want to update...</p>
	     <hr>
   				    				    <input type = "hidden" name = "uid" value=<%=(String)request.getAttribute("UserID") %>>
   
   
           <label for="subjectid"><b>Schedule Id:</b>(You can't change schedule Id)</label><br>
           <input type="text" placeholder="Enter the subject code" name="schid" value="<%= schid %>" readonly><br><br>
       
       
           <label for="subjectcode"><b>Subject Code:</b></label><br>
           <input type="text"  name="subjectcode" value="<%= subjectcode %>"><br><br>
       
       
           <label for="subjectcode"><b>Teacher's Id:</b></label>
           <input type="text"  name="techerid" value="<%= teacherid %>"><br><br>
       
       
            <label for="subjectcode"><b>Create Date:</b></label>
            <input type="date"  name="createdate" value="<%= createdate %>"><br><br>
       
       
            <label for="subjectcode"><b>Starting time:</b></label><br>
            <input type="time" name="timefrom" value="<%= timefrom %>"><br><br>
       
       
           <label for="subjectcode"><b>Ending time:</b></label><br>
           <input type="time" name="timeto" value="<%= timeto %>"><br><br>
      
       
          <label for="subjectcode"><b>Class date:</b></label><br>
           <input type="date" name="classdate" value="<%= classdate %>"><br><br>
     
       
          <label for="subjectcode"><b>Grade:</b></label><br>
          <input type="text" name="grade" value="<%= grade %>"><br><br>
       
       <hr>
   
     <center><input type="submit" name="submit" value="Update Session details" class="addbtn">
    </div><br><br>
  </form></center>
    


</body>
</html>