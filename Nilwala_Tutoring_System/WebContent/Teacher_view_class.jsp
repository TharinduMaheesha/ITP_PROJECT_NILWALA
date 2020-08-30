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
body {font-family: Arial, Helvetica, sans-serif;}


/* Extra styles for the cancel button 
/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}


.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>	
		   <li><a href="Teacher_available_classes.jsp"><b>Manage Classes</b></a></li>		  
		   <li><a href="#"><b>View Class</b></a></li>		  
		  	  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	<div class = "tm_container">
		<div class = "tm_video">
			<%
			
				SubjectClass s = (SubjectClass)request.getAttribute("classDetails");
			
			if(s.getVideo() != null){
				String sub = s.getVideo();
			
			
			%>
			
			<video controls controlsList="nodownload">
			  <source src="<%=sub %>" >
			</video>
			
			<div style = "margin-top: 25px">
			
			<div class="tm_row">
				      <div class="tm_col-25">
				        <label >Class ID : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getId()%></label>
				      </div>
		  	 	 </div>
				 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Level : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getLevel() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Grade : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getGrade() %></label>
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Subject : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getSubject() %></label>
				      </div>
		  	 	 </div>
		  	 	  <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Enrollment key : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getKey() %></label>
				      </div>
		  	 	 </div>
		  	 	 
		  	 	  <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Quiz Link : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getQuiz() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Date : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getDate() %></label>
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Starting time : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getStart() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Duration : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getEnd() %></label>
				      </div>
		  	 	 </div>
		  	 	 
		  	 	 <div class="tm_row"><br>
		  	
  <form action="TeacherClassControllerServlet" method="post" >
           <input type="hidden" name = "classID"  value = <%=s.getId() %>>
            <input type="submit" value="Edit" name = "saveClass"style = "font-size:20px; width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
     
     </form>    </div>
     	 <%}
			else{
			%>
			<div class="tm_btn-group1">
				  <button onclick="document.getElementById('id01').style.display='block'">Add Video and Quiz</button></div>
			<div style = "margin-top: 25px">
			
			
				 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Level : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getLevel() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Grade : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getGrade() %></label>
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Subject : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getSubject() %></label>
				      </div>
		  	 	 </div>
		  	 	  <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Enrollment key : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getKey() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Date : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getDate() %></label>
				      </div>
		  	 	 </div><div class="tm_row">
				      <div class="tm_col-25">
				        <label >Starting time : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getStart() %></label>
				      </div>
		  	 	 </div>
		  	 	 <div class="tm_row">
				      <div class="tm_col-25">
				        <label >Duration : </label>
				      </div>
				      <div class="tm_col-75">
				        <label style = "background-color: white ; color : black"><%=s.getEnd() %></label>
				      </div>
		  	 	 </div>
		  	 	 
		  	 	 <div class="tm_row"><br>
		  	
     <form action="TeacherClassControllerServlet" method="post" >
           <input type="hidden" name = "classID"  value = <%=s.getId() %>>
            <input type="submit" value="Edit" name = "saveClass"style = "font-size:20px; width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
     
     </form>
    </div><%} %>
    
			
			</div>
		</div>
		
	</div>
	
	
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="TeacherClassControllerServlet" method="post" enctype='multipart/form-data'>
      <input type="hidden" name = "classID"  value = <%=s.getId() %>>
  
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <div class="tm_row">
      <div class="tm_col-25">
        <label for="country">Add Video : </label>
      </div>
      <div class="tm_col-75">
       <input type = "file" name = "video_path" required="required" >
      </div>
      </div>
      
       <div class="tm_row">
      <div class="tm_col-25">
        <label for="country">Add Quiz Link : </label>
      </div>
      <div class="tm_col-75">
       <input type = "text" placeholder="Copy and paste tour quiz link here...." name = "quiz_link" required="required" >
      </div>
      </div>
       
      <div class="tm_row">
      <div class="tm_col-25">    
      </div>
      <div class="tm_col-75">      <br><br>
      
            <input type="submit" value="Add" name = "saveClass" style = " font-size : 20px;width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
      </div>
      </div>
    </div>

   
  </form>
</div>
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
<footer></footer>
</html>