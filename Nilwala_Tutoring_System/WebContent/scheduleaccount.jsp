<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <center><table width ="480" height = "380" class = "table">

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
     <td>Class date :</td> 
     <td>${tea.class_date}</td>
     </tr>
     
     <tr>
     <td>Schedule Id :</td> 
     <td>${tea.grade}</td>
     </tr>
     
     </c:forEach>
     </table>
     
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
     <input type="button" name="update" value="Update session details">
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
     <input type="button" name="delete" value="Delete session details">
     </a>

</body>
</html>