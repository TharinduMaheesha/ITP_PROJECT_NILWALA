<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

* {
  box-sizing: border-box;
}
.unsuccess{
  padding: 15px;
  background-color: #ddffdd;
  width : 850px;
  height :500px;
  text-align:left;
  border: solid;
  position: absolute;
  left:230px;

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
.unsuccess h3{
  font-size: 20px;
}
.unsuccess p{

   text-align:left;
  font-size: 17px;
  color: red;
  border-width: 2px
}


</style>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="ScheduleHome.jsp"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr>

  <div class="unsuccess">
         <center><span style='font-size:100px;'>&#128577;</span></center>
         <center><h3>SORRY! <br>Your schedule is not created successfully...!</h3><br><br><br></center>
         <center><p><strong>Error:  </strong><br>May be your previous week's schedule is already in the system .<br><br><Strong>Tip:</strong><br>Click -> "Back"/"Change scheduled session details"/         and Enter yout subject code there and delete your session details,           and try again.</Striong></p></center>
  </div>




   <center><div class = "but3">
     
        <a href="ScheduleHome.jsp">
        <button class="success"><span> <- Back </span></button>
         </a><br>
    </div></center>

</body>
</html>