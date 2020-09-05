<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>


.sheduleaccount{

border: none;
background-color:#39C442;
  color: black;
  padding: 8px 12px;
  font-size: 16px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
  border-radius: 12px;


}

.scheduleaccoutPafeHr{

position:relative;
top:220px;

}
.downbutton{
border: none;
background-color: blue;
border-color:black;
border-radius:10px;
  color: black;
  padding: 10px 15px;
  font-size: 14px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
  



}
.Teachangeschedule{

color: green;
font-size: 20px;
text-decoration: underline;


}





</style>
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
		  <li><a href="#"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr>
<br>

<center><div class = "Teachangeschedule">
	           <label>-Your schedule of this week...-</label>
	    </div></center><br>
	



 <center><table type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
 
 <table id="myTable">
  <tr class="header">
    <th style="width:60%;">Schedule of this week......................!</th>
    <th style="width:40%;"></th>

     <c:forEach var="tea" items="${teaDetails}">
     
     <c:set var="schid" value="${tea.schedule_id}"/> 
     <c:set var="subjectcode" value="${tea.subject_code}"/> 
     <c:set var="teacherid" value="${tea.teacher_id}"/> 
     <c:set var="datecreated" value="${tea.date_created}"/> 
     <c:set var="timefrom" value="${tea.time_from}"/> 
     <c:set var="timeto" value="${tea.time_to}"/> 
     <c:set var="classdate" value="${tea.class_date}"/>  
     <c:set var="grade" value="${tea.grade}"/> 
    
     
     
     
     <tr>
    <td>Schedule Id :</td> 
     <td>${tea.schedule_id}</td>
     </tr>
     
     <tr>
     <td>Subject Code :</td> 
     <td>${tea.subject_code}</td>
     </tr>
     
     <tr>
     <td>Teacher's Id :</td> 
     <td>${tea.teacher_id}</td>
     </tr>
     
     <tr>
     <td>Created Date :</td> 
     <td>${tea.date_created}</td>
     </tr>
     
     <tr>
     <td>Time-from :</td> 
     <td>${tea.time_from}</td>
     </tr>
     
     <tr>
     <td>Time-to :</td> 
     <td>${tea.time_to}</td>
     </tr>
     
     <tr>
     <td>Class conducting date :</td> 
     <td>${tea.class_date}</td>
     </tr>
     
     <tr>
     <td>Grade :</td> 
     <td>${tea.grade}</td>
     </tr>
     
     </c:forEach>
     </table><br>
     



<div id = "downbutton">
          <center><button id ="downbutton"">downloard</button></center>
</div>



<hr>
</div>



</body>

</html>