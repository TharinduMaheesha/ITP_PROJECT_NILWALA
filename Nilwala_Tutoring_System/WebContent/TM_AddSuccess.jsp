<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="lakshi.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->	  
		</ul>
	</div>

   <center><p class="font-italic" class = "text-success"><b>Wellcome to the Lessons!!!</p></b> </center>
   
			<div style = " max-width: 750px;  margin: auto;" class = "background"  class = "transbox" >
			<table style = " align : center;">
			<form action ="TM_RetriveAddedDetailsUpPageSer" method = "POST" class="modal-content" required>
			
			<%
			String teacher_id = request.getParameter("teacherid");
			String subject_code = request.getParameter("subjectcode");
			String lesson_no = request.getParameter("lessonno");
			String lesson_name = request.getParameter("lessonname");
			String material = request.getParameter("material");
			%>
			
			
			  <div class="container" style = "Background-image : url(./images/ss.jpg); Background-size : 1300px 950px " >
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
			      <input type="text" id="lname" name="lessonno"    value="<%= lesson_no %>" readonly>
			    </div>
			  </div>
			    <div class="row">
			    <div class="col-25">
			      <label for="lname">Topic Of The Lesson</label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lessonname" value="<%= lesson_name %>" readonly/>
			    </div>
			  </div>
			  
			    <div class="row">
			    <div class="col-25">
			      <label for="lname">Materials Of The Lesson</b></label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="material" style="height:200px"  value="<%= material %>" readonly/>
			    </div>
		
		
			  
			
			<center> <button  class="btn1"><i class="fa fa-bars"></i><b>Update The Lesson</b></button>
			  </form>
			<button class="btn1"><i class="fa fa-trash"></i><b>Delete The Lesson</b> </button></center>	
			</div>
	
			<center><button class="button button1">Add A New Lesson</button>
		
	

</body>
</html>