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
<center><h3>SUCCESSFULL...! <br>Your schedule was successfully deleted!</h3><br><br><br>

</center>


<hr>
</div>

  
  

</body>
</html>