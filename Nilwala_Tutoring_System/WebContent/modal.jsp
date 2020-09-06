<%@page import="com.mysql.cj.util.DnsSrv.SrvRecord"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="student_styles.css">

<style type="text/css">

input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #2b029c;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */


.tm_stcontainer {
  padding: 16px;
}



/* The Modal (background) */
.tm_stmodal {
 /* Hidden by default */
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
.tm_stmodal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
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

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>
		  		  <li><a href="#"><b>Classes</b></a></li>
		  		  <li><a href="#"><b>Active Classes</b></a></li>
		  
		</ul>
	</div>
	<hr class = "solid">
<div id="id01" class="tm_stmodal">
  
  <form class="tm_stmodal-content animate" action="StudentClassControllerServlet" method="post">
   <%
	String uid = (String)request.getAttribute("UserID");

   String value = (String)request.getAttribute("id");
   
   %>
<input type="hidden" value= <%=value %> name = "modalid">
      				    <input type="hidden" value = <%=uid %> name = "uid">

    <div class="tm_stcontainer">
      <label for="uname"><b>Enrollment Key</b></label>
      <input type="text" placeholder="Enter Enrollment key here" name="enroll_key" required>
        
      <button type="submit" name = "StudentClass" value="modalenroll">Enroll</button>
      
    </div>

    <div class="tm_stcontainer" style="background-color:#f1f1f1">
      <button type="button" onclick="history.back()" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>


</body>
</html>