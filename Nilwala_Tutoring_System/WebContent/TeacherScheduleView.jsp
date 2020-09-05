<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.StudentScheduleVeiwPage input[type=text], select, textarea {
  width: 320px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

.StudentScheduleVeiwPage{
 
 top:50px;
 position:relative;
 left:260px;
 border-radius: 25px;
  border: 3px solid #009900;
  padding: 20px;
  width: 800px;
  height: 150px;
  
}
.StudentScheduleVeiwPageHr{

position:relative;
top:420px;

}

.TeacherScheduleViewBtn{

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

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr>
	
	<div class = "StudentScheduleVeiwPage">
<form action="teacherveiw" method="post">

<center><label for="subjectCode"><b>Enter the subject code here to get the week's shedule of your subject..</strong></b></label><br><br></center>
    <center><input type="text" placeholder="Enter your subject code" name="sid" required><br></center><br>



   <center><input type="submit" name="submit" value="View session details" class="TeacherScheduleViewBtn"></center><br>

<br>
</form>

</div>
	

<div class="StudentScheduleVeiwPageHr">

<hr>
</div>


















</body>
</html>