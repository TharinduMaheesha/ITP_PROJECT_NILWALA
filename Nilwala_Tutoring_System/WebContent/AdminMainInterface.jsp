<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="Admin_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  
    <center><h5><b>Wellcome To The Admin Site!!</b></h5></center>

<center><div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
       
   
    
        <button type="button" class="btn btn-lg btn-danger" style = "background-color: red">Get All The Records Of The Lessons</button><br><br>
     
        <button type="button" class="btn btn-lg btn-danger" style = "background-color: red">View The Count Of The Subjects</button><br><br>
		<a href="TM_AdminLessonsCount.jsp">
        <button type="button" class="btn btn-lg btn-danger" style = "background-color: red">View The Count Of The Lessons</button><br><br>
     </a>
      </div>
    </div>
  </div>
  
</div></center>
	<hr>
</body>
<footer></footer>
</html>