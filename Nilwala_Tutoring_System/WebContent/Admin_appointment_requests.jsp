<%@page import="Model.AppointmentModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  
  .tm_class_home{
	display : flex;
	width : 99%;
	margin : auto;
	height : auto;
	background-color : #e3e3e3;
}
  
  </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr class = "solid">
	<div class = "tm_class_home">
<%
ArrayList<AppointmentModel> array = (ArrayList)request.getAttribute("Appointment");



%>
<div class="container">
      <h2>Appointments</h2><br>
  
  <%
  if(array.size() == 0){
	  %>
	  
	  <div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
					<p style = "font-family: sans-serif; font-size: 20px ; text-align: center; color : black;"><b> There are no Appointments to be displayed</b></p>
			
			</div>
			<%}else{
  	for(AppointmentModel model : array){
  		
  		String apid = model.getId();
  		
  %>
  
    <div class="panel panel-default">
    <div class="panel-body" style = "margin-top: 10px">
    
    <p><b>Appointment ID : <%=model.getId() %></b></p>
        <p><b>Appointment Date : 12th august</b></p>
        <p><b>Created Date : 12th august</b></p>
        <p><b>Subject : <%=model.getName() %></b></p>
        <p><b>Teacher : <%=model.getFname() %>&nbsp<%=model.getLname() %></b></p>
        <p><b>Teacher : <%=model.getDescription()%></b></p>
       	<label><p><b>Status :</b></p> </label>&nbsp&nbsp<label style = "padding : 20px 35px ; background-color: #ebb734; color : white">Pending...</label>
       	<form action="AdminNoticeControllerServlet" method="post">
       	<input type = "hidden" name = "apid" value=<%=model.getId() %>>
        <button type = "submit" name = "some" style = "float : right ; background-color: red ; margin-left: 10px" class="btn btn default" value="declined">Decline</button>
        <button type = "submit" name = "some" style = "float : right ; background-color: blue" class="btn btn default" value="accepted">Accept</button>
        
         </form>

      </div></div>

  
  <%} }%>
  
  </div>
</div>
		
	 
</body>
<footer></footer>
</html>
