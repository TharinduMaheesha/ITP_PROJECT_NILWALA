<%@page import="Util.UserController"%>
<%@page import="Model.UserModel"%>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.tm_class_home{
	display : flex;
	width : 99%;
	margin : auto;
	height : auto;
	background-color : #e3e3e3;
}
.vbutton {
  background-color: #3000b3; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 16px 20px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  width:20%; /* Set a width if needed */
  display: block; /* Make the buttons appear below each other */
  border-radius: 20px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  font-size: 20px;
  float : right;
  
}
p{
font-family: sans-serif;
font-size: 20px;
font-weight: bolder;
}
label{
font-size: 18px;
font-weight: bold;
background-color: #3000b3;
color: white;
width : 20%;
text-align: center;
height: 35px;

}
</style>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 
<%
String uid = (String)request.getAttribute("UserID");

ArrayList<UserModel> array = UserController.findTeachers(uid);



%>
<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></b></a></li>
		</ul>
	</div>
	<hr class = "solid">
	<div class = "tm_class_home">

<div class="container" style="margin-bottom: 20px">
  <h2><b>Appointment Form<b></b></h2>
  <br>
  <p><b>1.) Please fill the following form and submit to make an appointment to visit a physical class</b></p>
   <p><b>2.) Clearly mention your reason so that there won't be any misunderstandings.</b></p><br><br>
  
  <form action="StudentNoticeControllerServlet" method="post">
  <input type = "hidden" name = "uid" value=<%=uid %>> 
    <div class="form-group">
      <label for="email">Grade :</label>
      <select class="form-control" name = "grade">
      <option class="form-control" value = "10">10</option>
      <option value = "10">11</option>
      <option value = "10">12</option>
      <option value = "10">13</option>
      
      </select>
    </div>
    <div class="form-group">
      <label for="pwd">Teacher :</label>
 	<select class="form-control" name = "teacher">
 	  <option  hidden selected>Select your teacher</option>
 	
 	<%for(UserModel user : array){ %>
      <option  class="form-control" value = <%=user.getId() %>><%=user.getFname() %>&nbsp<%=user.getLname() %></option>
      <%} %>
      
      </select>    
      </div>
      
       <div class="form-group">
      <label for="pwd">Subject :</label>
 	<select class="form-control" name = "subject">
 	  <option hidden selected>Select your Subject</option>
 	
 	<%for(UserModel user : array){ %>
      <option value = <%=user.getNic() %>><%=user.getUname() %></option>
      <%} %>
      
      </select>    
      </div>
      
         <div class="form-group">
      <label for="pwd">Date of Appointment :</label>
      <input type="date" name ="date" class="form-control">
      </div>
   
          <div class="form-group">
      <label for="pwd">Reason :</label>
 		<textarea rows="5" cols="10" class="form-control" name = "reason"></textarea>    
      </div>
    <button type="submit" class="btn btn default" style = "background-color: #3000b3 ; float: right;padding: 16px 20px;" name = "appointment" value = "sendRequest">Send Request</button>
  </form>
</div>
		</div>
	 
</body>
<footer></footer>
</html>