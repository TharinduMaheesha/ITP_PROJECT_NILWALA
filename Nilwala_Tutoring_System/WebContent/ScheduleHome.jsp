<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.scheduleHomeBox{
 
 top:60px;
 position:relative;
 left:220px;
 border-radius: 10px;
  border: 3px solid #bfff80;
  padding: 20px;
  width: 850px;
  height: 500px;
  
}

.sheduleHomegif{
position:relative;
left:400px;
top:50px;
width: 300px;
height:70px;
 
}


.SheduleHomeBtn{

position:relative;
left:-150px;
top:80px;



}

.SheduleHomeBtns{

border: none;
background-color: #009900;
border-color:#006600;
border-radius:10px;
  color: black;
  padding: 10px 15px;
  font-size: 14px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
  
  


}

.ScheduleHomeHr{

position:relative;
top:100px;

}
ul.breadcrumb {
  padding: 10px 16px;
  list-style: none;
  background-color:  white;

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
  color: green;
  text-decoration: underline;
}
hr.rounded {
  border-top: 8px solid #bbb;
  border-radius: 5px;
}
hr.solid {
  border-top: 3px solid green;
}

</style>



<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Schedule</b></a></li>		  
		</ul>
	</div>
	<hr>
	
	
<div class = "scheduleHomeBox">
	       <div class = "sheduleHomegif">
			<img src=".\images\schedule2.gif">
		   </div>
	
    <div class="SheduleHomeBtn">
    <form action="ScheduleNavServlet" method="post">
    
    <input type = "hidden" name = "uid" value=<%=(String)request.getAttribute("UserID") %>>
				    				    <%request.setAttribute("UserID", (String)request.getAttribute("UserID")); %>
           <center><a href="scheduleInsert.jsp">
                 <button type = "submit" name = "schedule" value = "create" class="SheduleHomeBtns"><span><b>Create a new schedule </b></span></button>
            </a></center><br>
     
           <center><a href="TeacherScheduleView.jsp">
                  <button type = "submit" name = "schedule" value = "get" class="SheduleHomeBtns"><span><b>Get my schedule details</b></span></button>
           </a></center><br>
     
           <center><a href="login.jsp">
                  <button  type = "submit" name = "schedule" value = "change" class="SheduleHomeBtns"><span><b>change my schedule details...</b> </span></button>
          </a></center><br>
     
          <center><a href="ViewAllSessionDetails.jsp">
                  <button type = "submit" name = "schedule" value = "view" class="SheduleHomeBtns"><span><b>View all scheduled session details...</b> </span></button>
          </a></center><br>
          </form>
     </div>
</div>
				    				    



        <div class="ScheduleHomeHr">

            <hr>
        </div>



</body>
</html>