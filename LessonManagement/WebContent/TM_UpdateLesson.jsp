<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">

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
					<%
			String teacher_id = request.getParameter("teacher_id");
			String subject_code = request.getParameter("subject_code");
			String lesson_no = request.getParameter("lesson_no");
			String lesson_name = request.getParameter("lesson_name");
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
			      <input type="text" id="lname" name="lastname" value="<%= lesson_name %>" />
			    </div>
			  </div>
			  
			    <div class="row">
			    <div class="col-25">
			      <label for="lname">Materials Of The Lesson</b></label>
			    </div>
			    <div class="col-75">
			      <input type="text" id="lname" name="lastname" style="height:200px"  value="<%= material %>" />
			    </div>
		
			  </form>
	<hr>
</body>
<footer></footer>
</html>