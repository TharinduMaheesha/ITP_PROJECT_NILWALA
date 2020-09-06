<%@page import="Util.ClassControllerUtil"%>
<%@page import="Model.SubjectClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.tm_label label {
  width : 70%;
  color : black;
  text-align: left;
  background-color: white;
  font-size: 25px;
}
.UL{
 list-style-type: none;
  padding: 0;
  margin: 0;`
  width : 100%;

}
.LI{
  border: 0px solid #ddd;
  margin-top: 5px; /* Prevent double borders */
  padding: 20px;
  padding-right : 100px;
  color : black;
  font-size : 22px;	
    width : 100%;
    font-weight: bold;
    list-style-type: disc;
}
</style>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>	
		   <li><a href="Teacher_available_classes.jsp"><b>Class History</b></a></li>		  
		   <li><a href="#"><b>View Class</b></a></li>		  
		  	  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	<%
	
		SubjectClass sub = (SubjectClass)request.getAttribute("historyDetails");
	String count = ClassControllerUtil.studentCount(sub.getId());
	
	%>
	<div class = "tm_container">
	
			<div class = "tm_video" style = "width : 70% ; display : flex ; float : left;">
			
			<video controls controlsList="nodownload" style = "margin-top: 50px ; margin-right: 250px">
			  <source src="<%=sub.getVideo() %>" >
			</video></div>
			
			<div style=" display : flex ;" class = "tm_label">
			<div>
			<h2>Details :</h2>

				<ul class = "UL">
				  <li class = "LI">Class ID   : <%=sub.getId() %></li>
				  <li class = "LI">Subject    : <%=sub.getSubject() %></li>
				  <li class = "LI">Grade      : Grade <%=sub.getGrade() %></li>
				  <li class = "LI">Date       : <%=sub.getDate() %></li>
				   <li class = "LI">Time       : <%=sub.getStart() %></li>
				   <li class = "LI">Attendance : <%=count %> Students</li>
				</ul>
							
			
			</div>
		
		</div>
	
		<div class = "tm_button_container" style = "margin-top: 50px ; float : flex ; margin-right: -5px">
			<div class="tm_btn-group1">
				<form action = "TeacherClassControllerServlet" method="post"> 
				<input type="hidden" name = "uid" value=<%=(String)request.getAttribute("UserID") %>>
				<input type="hidden" name = "id" value=<%=sub.getId() %>>
				<button name = "saveClass" value = "attendance">View Attendance</button><br></form> 
				  <button onclick="history.back()" >Exit</button><br>
			</div>
	
	</div>
	
	
	
	
	

</body>
<footer></footer>
</html>