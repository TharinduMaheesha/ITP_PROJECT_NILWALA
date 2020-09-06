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

<%@ include file="WEB-INF/Student_header.jsp" %> 

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
			
			</div><%}else{
  	for(AppointmentModel model : array){
  		
  		String apid = model.getId();
  		
  %>
           <form action="StudentNoticeControllerServlet" method = "post"> 
  
    <div class="panel panel-default">
    <div class="panel-body" style = "margin-top: 10px">
             				<input type="hidden" name = "apid" value=<%=apid %>>
    
    <p><b>Appointment ID : <%=model.getId() %></b></p>
        <p><b>Appointment Date : 12th august</b></p>
        <p><b>Created Date : 12th august</b></p>
        <p><b>Subject : <%=model.getName() %></b></p>
        <p><b>Teacher : <%=model.getFname() %>&nbsp<%=model.getLname() %></b></p>
        <p><b>Teacher : <%=model.getDescription()%></b></p>
        
        <%if(model.getStatus().equalsIgnoreCase("pending")){ %>
       	<label><p><b>Status :</b></p> </label>&nbsp&nbsp<label style = "padding : 20px 35px ; background-color: #ebb734; color : white">Pending...</label>
       	<%}else if(model.getStatus().equalsIgnoreCase("accepted")){ %>
       	<label><p><b>Status :</b></p> </label>&nbsp&nbsp<label style = "padding : 20px 35px ; background-color: green; color : white">Accepted</label>
       	<%}else if(model.getStatus().equalsIgnoreCase("declined")){ %>
       	<label><p><b>Status :</b></p> </label>&nbsp&nbsp<label style = "padding : 20px 35px ; background-color: #c91a29; color : white">Declined</label>
       	<%} %>
       	
       	  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Alert</h4>
        </div>
        <div class="modal-body">
          <p>Confirm cancellation of this Appointment?
          </p>
        </div>
        <div class="modal-footer">
         				<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
         
         <button type="submit" class="btn btn default"  style="background-color: red" name = "appointment" value = "cancel">Confirm</button>
          <button type="button" class="btn btn default" data-dismiss="modal" style = "color : black ; border: 1px solid black">Close</button>
          </form>

        </div>
      </div></div></div>
        <button type = "button" style = "float : right ; background-color: blue" class="btn btn default" data-toggle="modal" data-target="#myModal">Cancel</button>
        
    
    
    </div>
    
    
  </div>
  <%} }%>
  
  
</div>
</div>
		
	 
</body>
<footer></footer>
</html>
