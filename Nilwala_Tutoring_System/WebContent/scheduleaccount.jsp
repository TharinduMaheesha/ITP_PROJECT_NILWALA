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
		  <li><a href="ScheduleHome.jsp"><b>Schedule</b></a></li>		  
		</ul>
	</div>
	<hr>
<br><br>
 <center><table type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
          		    				    <input type = "hidden" name = "uid" value=<%=(String)request.getAttribute("UserID") %>>
          		    				    
   
 
 <table id="myTable">
  <tr class="header">
    <th style="width:60%;">Details of your session...</th>
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
     

     
     <c:url value="updateSchedule.jsp" var="schupdate"> 
    <c:param name="schid" value="${schid}"/>
    <c:param name="subjectcode" value="${subjectcode}"/>
    <c:param name="teacherid" value="${teacherid}"/>
    <c:param name="createdate" value="${datecreated}"/>
    <c:param name="timefrom" value="${timefrom}"/>
    <c:param name="timeto" value="${timeto}"/>
    <c:param name="classdate" value="${classdate}"/>
    <c:param name="grade" value="${grade}"/>
   
 
    </c:url>
     
     <a href="${schupdate}">
     <input type="button" name="update" value="Update session details" class="sheduleaccount">
     </a><br><br>
     
    <c:url value="deleteSchedule.jsp" var="schdelete"> 
    <c:param name="schid" value="${schid}"/>
    <c:param name="subjectcode" value="${subjectcode}"/>
    <c:param name="teacherid" value="${teacherid}"/>
    <c:param name="createdate" value="${datecreated}"/>
    <c:param name="timefrom" value="${timefrom}"/>
    <c:param name="timeto" value="${timeto}"/>
    <c:param name="classdate" value="${classdate}"/>
    <c:param name="grade" value="${grade}"/>
    
     
     </c:url>
     
     <a href="${schdelete}">
     <input type="button" name="delete" value="Delete session details" class="sheduleaccount">
     </a>
     
     <div class="scheduleaccoutPafeHr">		
     

<hr>
</div>

</body>
</html>