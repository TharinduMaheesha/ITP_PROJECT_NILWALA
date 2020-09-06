<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


.StudentScheduleVeiwPage{
 
 top:50px;
 position:relative;
 left:260px;
 border-radius: 25px;
  border: 3px solid blue;
  padding: 20px;
  width: 800px;
  height: 150px;
  
}
.StudentScheduleVeiwPageHr{

position:relative;
top:420px;

}


* {
  box-sizing: border-box;
}

form.loginSearch input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.loginSearch button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
  position:relative;
  top : -36px;
}

form.loginSearch button:hover {
  background: #0b7dda;
}

form.loginSearch::after {
  content: "";
  clear: both;
  display: table;
}
.Studentchangeschedule{

color: blue;
font-size: 20px;
text-decoration: underline;


}
ul.breadcrumb {
  padding: 10px 16px;
  list-style: none;
  background-color: white;
}
ul.breadcrumb li {
  display: inline;
  font-size: 25px;
}
ul.breadcrumb li+li:before {
  padding: 10px;
  color: black;
  content: "/\00a0";
}
ul.breadcrumb li a {
  color: black;
  text-decoration: none;
  font-family: sans-serif;
}
ul.breadcrumb li a:hover {
  color: #3000b3;
  text-decoration: underline;
}
hr.solid {
  border-top: 3px solid

</style>

</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="ScheduleHome.jsp"><b>Schedule<b></b></a></li>
		</ul>
	</div>
	<hr><br>
	
	<center><div class = "Studentchangeschedule">
	<label>-Get your Schedule...!-</label>
	</div></center><br>
	
	<div class = "StudentScheduleVeiwPage">
          <form action="studentveiw" method="post" class="loginSearch" style="margin:auto;max-width:600px">
				<input type = "hidden" value=<%=(String)request.getAttribute("UserID") %> name = "uid">
                <center><label for="subjectCode"><b>Enter the subject code here to get the week's shedule of the relevent subject</strong></b></label><br><br><center>
                <center><input type="text" placeholder="Enter the subject code...."  name="sid"  required><br></center><br>
  
				    				    <input type = "hidden" name = "uid" value=<%=(String)request.getAttribute("UserID") %>>

                <center><button type="submit" name="submit" ><i class="fa fa-search"></i></button></center><br>
 

          </form>
   </div>

 <div class="StudentScheduleVeiwPageHr">

   <hr>
</div>

</body>
</html>