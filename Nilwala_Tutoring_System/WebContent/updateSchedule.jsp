<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
 
    <form action="update" method="post">
       Schedule Id :<input type="text" name="schid" value="<%= schid %>" readonly><br>
       Subject Code :<input type="text" name="subjectcode" value="<%= subjectcode %>"><br>
       Teacher's Id :<input type="text" name="techerid" value="<%= teacherid %>"><br>
       Created Date :<input type="date" name="createdate" value="<%= createdate %>"><br>
       Time-from    :<input type="time" name="timefrom" value="<%= timefrom %>"><br>
       Time-to      :<input type="time" name="timeto" value="<%= timeto %>"><br>
       Class date   :<input type="date" name="classdate" value="<%= classdate %>"><br>
       Grade        :<input type="text" name="grade" value="<%= grade %>"><br>
       
       <input type="submit" name="submit" value="Update Session details"><br>
    
    
    </form>


</body>
</html>