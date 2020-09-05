<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.ViewAllTable{
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 3px solid black;
  
}

.ViewAllTable th, td {
  text-align: left;
  padding: 16px;
}

.ViewAllTable tr:nth-child(even) {
  background-color: #f2f2f2;
}

.VeiwAll
{
  border: 3px solid black;

}
.ViewAlldownBtn{
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 30px;
  cursor: pointer;
  font-size: 20px;
  position:relative;
  left:1160px;
  top:10px;
}

/* Darker background on mouse-over */
.ViewAlldownBtn:hover {
  background-color: RoyalBlue;
}


.ViewAllPageHr{

position:relative;
top:120px;

}

.getmyscheBtn{

border: none;
  color: white;
  padding: 10px 15px;
  font-size: 16px;
  cursor: pointer;
  border-style: solid;
  border-color: green;
  


}
.getmyscheBtn{background-color: #4CAF50;}
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
  top:20px;
  left:-560px;


}

.VeiwAll h1{

color: green;
font-size: 14px;

}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr>
	
	
<div id="VeiwAll">
	<h3>All Sheduled sessions for this week..</h3>
<center><table class= "ViewAllTable">

  <tr>
    <th>Schedule Id</th>
    <th>Subject Code</th>
    <th>Teacher's Id</th>
    <th>Created date</th>
    <th>Starting Time</th>
    <th>Ending Time</th>
    <th>Class Date</th>
     <th>Grade</th>
  </tr>
  <tr>
    <td>1</td>
    <td>EN001</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>10</td>
  </tr>
  <tr>
    <td>2</td>
    <td>EN002</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>11</td>
  </tr>
  <tr>
    <td>3</td>
    <td>EN003</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>12</td>
  </tr>
  <tr>
    <td>4</td>
    <td>EN004</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>8</td>
  </tr>
  <tr>
    <td>5</td>
    <td>EN005</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>9</td>
  </tr>
  <tr>
    <td>6</td>
    <td>EN006</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>9</td>
  </tr>
  <tr>
    <td>7</td>
    <td>EN007</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>7</td>
  </tr>
  <tr>
    <td>8</td>
    <td>EN008</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>6</td>
  <tr>
    <td>9</td>
    <td>EN009</td>
    <td>14</td>
    <td>2020.07.08</td>
    <td>4.00 p.m.</td>
    <td>5.00 p.m.</td>
    <td>2020.08.12</td>
    <td>5</td>
  </tr>
</table></center>


    <div id = "ViewAlldownloard">
    
    <button class="ViewAlldownBtn"><i class="fa fa-download"></i> Download</button>
    <br><br>
    <hr><br><br>
    </div>

<center><a href="login.jsp">
      <button class="getmyscheBtn"><span>Get my schedule</span></button>
     </a></center><br> 
     
     
     <center><a href="ScheduleHome.jsp">
      <button class="backBtn"><span>Back</span></button>
     </a></center><br>



</div>
	
	<div class="ViewAllPageHr">

<hr>
</div>
	
	







</body>
</html>