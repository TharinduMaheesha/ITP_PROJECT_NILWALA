<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="lakshi.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
				<div style = " max-width: 750px;  margin: auto;" class = "background"  class = "transbox" >
			<table style = " align : center;">
			
			<%
			String teacher_id = request.getParameter("teacherid");
			String subject_code = request.getParameter("subjectcode");
			String lesson_no = request.getParameter("lessonno");
			
			%>
			
			
			  <div class="container">
			  <form action="/action_page.php">
			  <div class="row">
			    <div class="col-25">
			      <label for="fname"><b>Your ID</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="teacherid" name="teacherid" value="<%= teacher_id %>"  readonly/>
			    </div>
			  </div>
			  <div class="row">
			    <div class="col-25">
			      <label for="lname">Subject Code</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="subjectcode" value="<%= subject_code %>" readonly/>
			    </div>
			  </div>
	
			  <div class="row">
			    <div class="col-25">
			      <label for="subject">Lesson Number</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lessonno"    value="<%= lesson_no %>" >
			    </div>
			  </div>
			   
			<center>
			<input type="submit" class ="btta" value="Delete The Lesson" class="add-button" /></center>
			</center><br>
			  </form>
			  
			</div><br><br>
			
			
	<hr>
</body>
<footer></footer>
</html>