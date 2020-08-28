<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="insert" method="post">
	
	Subject Code :<input type="text" name="subjectcode" ><br>
	Teacher's Id :<input type="text" name="teacherId"><br>
	Created Date :<input type="date" name="ceatedDate"><br>
	Time-from    :<input type="time" name="timeFrom"><br>
	Time-to      :<input type="time" name="timeTo"><br>
	Class Date   :<input type="date" name="classdate"><br>
	Grade        :<input type="text" name="grade"><br>
	
	
	<input type="submit" name="submit" value="Schedule a new session">
	
	</form>



</body>
</html>