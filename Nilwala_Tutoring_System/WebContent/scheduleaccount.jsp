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

     <c:forEach var="tea" items="${teaDetails}">
     
     ${tea.schedule_id}
     ${tea.subject_code}
     ${tea.teacher_id}
     ${tea.date_created}
     ${tea.time_from}
     ${tea.time_to}
     ${tea.class_date}
     ${tea.grade}
     
     
     
     </c:forEach>


</body>
</html>