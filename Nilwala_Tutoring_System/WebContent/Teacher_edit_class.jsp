<%@page import="Util.ClassControllerUtil"%>
<%@page import="Model.SubjectClass"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>	
		   <li><a href="Teacher_available_classes.jsp"><b>Manage Classes</b></a></li>		  
		   <li><a href="Teacher_view_class.jsp"><b>View Class</b></a></li>	
		    <li><a href="#"><b>Edit Class</b></a></li>		  
		   	  
		  	  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	<div class = "tm_container">
		<div class = "tm_video">
			<%
			
			SubjectClass s = (SubjectClass)request.getAttribute("classDetails");
			
			
			
			%>
			
			<video controls controlsList="nodownload">
			  <source src="<%=s.getVideo() %>" >
			</video>
						<div style = "margin-top: 25px">
			<form method="post" action="TeacherClassControllerServlet" enctype='multipart/form-data'>
			
			<input type="hidden" value=<%=s.getId() %> name = "class_id">
						<input type="hidden" value=<%=(String)request.getAttribute("UserID") %> name = "uid">
			
			
			 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Video : </label>
				      </div>
				      <div class="tm_col-75">
       						 <input type="file"  name="video"  >
				      </div>
		  	 	 </div>
		  	 	  <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Quiz Link : </label>
				      </div>
				      <div class="tm_col-75">
        					<input type="text" name="quiz_link"  id = "ekey" placeholder="Enrollment Key..." required value=<%=s.getQuiz() %>>
				      </div>
				      </div>
			
				 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Level : </label>
				      </div>
				      <div class="tm_col-75">
					   <select name = "class_level"  required >
					           <option value="alevel" id = "class_level">Advanced Level</option>
					          <option value="olevel" id = "class_level">Ordinary Level</option>
					        </select>				    
					    </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Grade : </label>
				      </div>
				      <div class="tm_col-75">
							<select name = "class_grade" required value = <%=s.getGrade() %>>
									  <option value = <%=s.getGrade() %> id = "class_level" selected hidden><%=s.getGrade() %></option>
							          <option value="10">10</option>
							          <option value="11">11</option>
							          <option value="12">12</option>
							          <option value="13">13</option>
							        </select>				
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Subject : </label>
				      </div>
				      <div class="tm_col-75">
							<select name = "subject" required>
							            <%
							      	String level = request.getParameter("class_level");  
							            
							            ArrayList<SubjectClass> array = ClassControllerUtil.subjectNamesForLevel("olevel");
							            
							            for(SubjectClass sub : array){
							            	
							            
							      
							      %>
							          <option value=<%=sub.getSubject() %>><%=sub.getSubject() %></option>
							          <%} %>
							        </select>			
				      </div>
		  	 	 </div>
		  	 	  <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Enrollment key : </label>
				      </div>
				      <div class="tm_col-75">
        					<input type="text" name="ekey"  id = "ekey" placeholder="Enrollment Key..." required value=<%=s.getKey() %>>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Date : </label>
				      </div>
				      <div class="tm_col-75">
       						 <input type="date"  name="class_date" required value=<%=s.getDate() %>>
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Starting time : </label>
				      </div>
				      <div class="tm_col-75">
        				<input type="time"  name="class_time_start" required value =<%=s.getStart() %>>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Ending Time : </label>
				      </div>
				      <div class="tm_col-75">
     						   <input type="time"  name="class_time_end" required>
				      </div>
		  	 	 </div>
		  	 	 
		  	 	 <div class="tm_row"><br>
      <input type="submit" value="Save Details" name = "saveClass"style = "font-size:20px; width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
    </div>
			</form>
			</div>
		</div>
		
	</div>
	

</body>
<footer></footer>
</html>