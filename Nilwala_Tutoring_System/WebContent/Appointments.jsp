<%@page import="Util.ClassControllerUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Admin_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

.tm_class_home{
	display : flex;
	width : 99%;
	margin : auto;
	height : 500px;
	background-color : #e3e3e3;
}
.tm_text_container{
	flex : 1;
	width : 100%;
	margin: auto;
	
}
.tm_button_container{
	width : 50%;
	flex : 1;
	margin: auto;	
}
.tm_btn-group1 button {
  background-color: #d92121; /* Green background */
  border: 1px solid red; /* Green border */
  color: white; /* White text */
  padding: 20px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  width:60%; /* Set a width if needed */
  display: block; /* Make the buttons appear below each other */
  margin: auto;
  border-radius: 20px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  font-size: 20px;
  
}

.tm_btn-group1 button:not(:last-child) {
  border-bottom: none; /* Prevent double borders */
}

/* Add a background color on hover */
.tm_btn-group1 button:hover {
  background-color: #db4848;
}

* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.tm_column {
  float: left;
  width: 90%;
  height:auto;
  padding: 0px 0px 0px 50px;
}

.tm_row {margin: 0 -5px;}

/* Clear floats after the columns */
.tm_row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .tm_column {
    width: 100%;
    display: block;
    margin-bottom: 10px;
  }
}

/* Style the counter cards */
.tm_card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 80px;
  text-align: center;
  background-color: #444;
  color: white;
}

.tm_fa {font-size:50px;}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>		  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	<div class = "tm_class_home">
		<div class = "tm_text_container">
			  <div class="tm_column">
				    <div class="tm_card">
				      <p><i class="fa fa-check"></i></p>
				      <%
				      String iid = (String)request.getAttribute("UserID");
				      	String held = ClassControllerUtil.classCount(iid);
				      
				      %>
				      <h3><%=held %></h3>
				      <p>Total Appointments for the day</p>
				    </div>
				  </div>
		</div>
		<div class = "tm_button_container">
			<div class="tm_btn-group1">
					<form action="AdminNoticeControllerServlet" method="post">
			
				  <button type="submit" name = "some" value="view">View New Requests</button><br>
				  <button type="submit" name = "app&not" value="manage">View Appointments</button><br>
				  <button type="submit" name = "app&not" value="historys">Rejected Appointments</button><br>
				  
				  
				  			</form>
				  
			</div>
		</div>
	
	</div>
</body>
<footer></footer>
</html>