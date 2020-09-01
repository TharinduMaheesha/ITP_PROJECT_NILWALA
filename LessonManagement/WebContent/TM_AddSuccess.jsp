<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="teacher_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->	  
		</ul>
	</div>

   <center><p class="font-italic" class = "text-success"><b>Successfullly Inset to the database</p></b> </center>
   
			<div style = " max-width: 700px;  margin: auto;" class = "background"  class = "transbox" >
			<table style = " align : center;">
			
		<%
			String teacher_id = request.getParameter("teacherid");
			String subject_code = request.getParameter("subjectcode");
			String lesson_no = request.getParameter("lessonno");
			String lesson_name = request.getParameter("lessonname");
			String material = request.getParameter("material");
			%>
			
			
			  <div class="container">
			  <form action="/action_page.php">
			  <div class="row">
			    <div class="col-25">
			      <label for="fname"><b>Your ID</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="teacherid"  value="<%= teacher_id %>"  readonly/>
			    </div>
			  </div>
			  <div class="row">
			    <div class="col-25">
			      <label for="lname">Subject Code</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lastname" value="<%= subject_code %>" readonly/>
			    </div>
			  </div>
	
			  <div class="row">
			    <div class="col-25">
			      <label for="subject">Lesson Number</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lastname"    value="<%= lesson_no %>" readonly>
			    </div>
			  </div>
			    <div class="row">
			    <div class="col-25">
			      <label for="lname">Topic Of The Lesson</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lastname" value="<%= lesson_name %>" readonly/>
			    </div>
			  </div>
			  
			    <div class="row">
			    <div class="col-25">
			      <label for="lname">Materials Of The Lesson</b></label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lastname" style="height:200px"  value="<%= material %>" readonly/>
			    </div>
		
			  </form>
			</div><br><br>
				<c:set var="teacherid" value="${tea.teacher_id}"/>
				<c:set var="subjectcode" value="${tea.subject_code}"/>
				<c:set var="lessonno" value="${tea.lesson_no}"/>
				<c:set var="lessonname" value="${tea.lesson_name}"/>
				<c:set var="material" value="${tea.material}"/>
				
				<c:url value="TM_UpdateLesson.jsp" var="addupdate">
				<c:param name="teacherid" value="${teacher_id}"/>
				<c:param name="subjectcode" value="${subject_code}"/>
				<c:param name="lessonno" value="${lesson_no}"/>
				<c:param name="lessonname" value="${lesson_name}"/>
				<c:param name="material" value="${material}"/>
				
				</c:url>
			<a href ="${addupdate}">
			<center> <button  class="btn1"><i class="fa fa-bars"></i><b>Update The Lesson</b></button>
			</a>
			<button class="btn1"><i class="fa fa-trash"></i><b>Delete The Lesson</b> </button></center>	
			</div>
	
			<center><button class="button button1">Add A New Lesson</button>
		
	

</body>
</html>