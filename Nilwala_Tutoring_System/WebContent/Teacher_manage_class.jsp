<%@page import="Model.SubjectClass"%>
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
<%
SubjectClass sub = (SubjectClass)request.getAttribute("ClassDetails");
	request.setAttribute("details", sub);

%>
	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>		
		  <li><a href="Teacher_create_class.jsp"><b>Create Class</b></a></li>		
		    
		    
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	
<div class="tm_container">
	<p style = "font-family: sans-serif; font-size: 20px ; text-align: center;"><b>Add Your lesson video and quiz link to complete the process</b></p>

  <form action="TeacherClassControllerServlet" method="post" enctype='multipart/form-data'>
      <div class="tm_row">
      <div class="tm_col-25">
        <label for="country">Add Video : </label>
      </div>
      <div class="tm_col-75">
       <input type = "text" name = "video_path" required="required" >
      </div>
      </div>
      
       <div class="tm_row">
      <div class="tm_col-25">
        <label for="country">Add Quiz Link : </label>
      </div>
      <div class="tm_col-75">
       <input type = "file" placeholder="Copy and paste tour quiz link here...." name = "quiz_link" required="required" >
      </div>
      </div>
      
      <div class="tm_row">
      <div class="tm_col-25">    
      </div>
      <div class="tm_col-75">      <br><br>
      
            <input type="submit" value="Save" name = "saveClass" style = " font-size : 20px;width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
      </div>
      </div>
        </form>
    
    <div class="tm_row">
      <form action="TeacherClassControllerServlet" method="post">
    <br>
      <input id = "saveClass" type="submit" value="Add Later" name = "saveClass" style = " font-size : 20px;width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px" >
	</form>
    </div>


  

</div>

	
</body>

<footer></footer>
</html>

