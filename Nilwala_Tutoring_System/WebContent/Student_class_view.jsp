<%@page import="Model.SubjectClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<style type="text/css">


.tm_video video{
  width: 100%;
  height: auto;
  max-width: 60%;
  margin:auto;
  display: block
}
.tm_container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding : 20px;
  padding-left : 60px;
    padding-right : 60px;
    padding-top : 50px;
  width : 90%;
  margin: auto;
  
}

.btn-group button {
  background-color: #3000b3; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 30px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: right; /* Float the buttons side by side */
  font-size: 25px;
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

.btn-group button:not(:last-child) {
  border-right: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color: blue;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr class = "solid">
	<%			String uid = (String)request.getAttribute("UserID");

			SubjectClass sub = (SubjectClass)request.getAttribute("StudentClassDetails");
	
	%>
	     				    <input type="hidden" value = <%=uid %> name = "uid">
	
	<div class = "tm_container">
		<p style = "font-family: sans-serif; font-size: 40px ; text-align: left;"><b><%=sub.getSubject()%>&nbsp By <%=sub.getFname() %>&nbsp<%=sub.getLname() %></b></p>
	
		<div class = "tm_video">
		
			
			
			<video controls controlsList="nodownload">
			  <source src="<%=sub.getVideo() %>" >
			</video>
			</div><br><br>
			<div class="btn-group" style="width:100% ">
  <button style="width:49% ; font-size : 20px;width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px" onclick = "window.open('<%=sub.getQuiz() %>', '_blank'); return false;">Attempt Quiz</button>
  <button style="width:50% ;margin-right: 10px; background-color: red ; font-size : 20px;width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px" onclick="history.back()">Exit</button>
</div>
  
		
	</div>
			

		
	 
</body>
<footer></footer>
</html>