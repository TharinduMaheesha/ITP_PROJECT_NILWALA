<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
</head>
<style>

* {
  box-sizing: border-box;
}
.success{
  padding: 15px;
  background-color: #ddffdd;
  width : 1277px;
  height :200px;
  text-align:left;
  border: solid;
  position: absolute;
  left:40px;

}

.but3{
    bottom : 50px;
	top:560px;
	left:10px;
	position:relative;
	width:300px;
	background-color: #4CAF50;
  color: #400040;
  font-size:medium;
  padding: 16px 20px;
  margin: 8px 0;
  border: solid;
  border-color: #2d6630;
  cursor: pointer;
  opacity: 0.9;
	
}
.success h3{
  font-size: 20px;
}
.getScheduleDetails{
 
 top:350px;
 position:relative;
 left:300px;
 border-radius: 25px;
  border: 3px solid #2d6630;
  padding: 20px;
  width: 800px;
  height: 220px;
  
}
.loginButton{

border: none;
  color: white;
  padding: 10px 15px;
  font-size: 16px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
  


}

.getScheduleDetails input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
.successpageHr{

position:relative;
top:520px;

}


.loginButton {background-color: #4CAF50;}

.backBtn{

border: none;
background-color:#C0C0C0;
  color:black;
  padding: 7px 10px;
  font-size: 16px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
  position:relative;
  top:420px;
  left:-560px;


}
</style>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<br>
	<hr>

<div class="success">
<center><span style='font-size:50px;'>&#128578;</span></center><br>
<center><h3>SUCCESSFULL...! <br>Your schedule is created successfully!</h3><br><br><br></center>
<hr>
</div>





<div class = "getScheduleDetails">
<form action="log" method="post">

<center><label for="subjectCode"><b>If you want to edit/delete schedule details or check whether the details are added correctly,<br><br><strong>Enter the subject code and click this button,<strong></strong></b></label><br><br></center>
    <center><input type="text" placeholder="Enter your subject code" name="sid" required><br></center><br>



   <center><input type="submit" name="submit" value="View session details" class="loginButton"></center><br>

<br>
</form>

</div>



<center><a href="ScheduleHome.jsp">
      <button class="backBtn"><span>Back</span></button>
     </a></center><br>
     

<div class="successpageHr">

<hr>
</div>


















</body>
</html>