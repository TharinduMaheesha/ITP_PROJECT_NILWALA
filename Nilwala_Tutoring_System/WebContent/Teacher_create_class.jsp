<%@page import="Util.ClassControllerUtil"%>
<%@page import="Model.SubjectClass"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxDatatypes.Array"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">



<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>		
		  <li><a href="#"><b>Create Class</b></a></li>		  
		    
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
<div class="tm_container">
	<p style = "font-family: sans-serif; font-size: 20px ; text-align: center;"><b>Enter details to create your class</b></p>
  <form action="TeacherClassControllerServlet" method="POSt">
  <input type = "hidden" name = "createUID" value=<%=(String)request.getAttribute("id")%>>
      <div class="tm_row">
      <div class="tm_col-25">
        <label >Level : </label>
      </div>
      <div class="tm_col-75">
        <select name = "class_level"  required>
          <option value="alevel" id = "class_level">Advanced Level</option>
          <option value="olevel" id = "class_level">Ordinary Level</option>
        </select>
      </div>
    </div>
      <div class="tm_row">
      <div class="tm_col-25">
        <label >Grade :</label>
      </div>
      <div class="tm_col-75">
        <select name = "class_grade" required>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
        </select>
      </div>
  
    </div>
      <div class="tm_row">
      <div class="tm_col-25">
        <label >Subject :</label>
      </div>
      <div class="tm_col-75">
        <select name = "subject" required>
            <%
            
            ArrayList<SubjectClass> array = ClassControllerUtil.subjectNamesForLevel("olevel");
            
            for(SubjectClass sub : array){
            	
            
      
      %>
          <option value=<%=sub.getSubject() %>><%=sub.getSubject() %></option>
          <%} %>
        </select>
      </div>
    </div>
    
     <div class="tm_row">
      <div class="tm_col-25">
        <label > Enrollment Key : </label>
      </div>
      <div class="tm_col-75">
        <input type="text" name="ekey"  id = "ekey" placeholder="Enrollment Key..." required maxlength="10">
      </div>
    </div>
    
   <div class="tm_row">
      <div class="tm_col-25">
        <label for="lname">Date</label>
      </div>
      <div class="tm_col-75">
        <input type="date"  name="class_date" required min="" id= "datefield">
      </div>
    </div>
    
      <div class="tm_row">
      <div class="tm_col-25">
        <label for="lname">Starting time</label>
      </div>
      <div class="tm_col-75">
        <input type="time"  name="class_time_start" required>
      </div>
    </div>
     <div class="tm_row">
      <div class="tm_col-25">
        <label for="lname">Ending time</label>
      </div>
      <div class="tm_col-75">
        <input type="time"  name="class_time_end" required>
      </div>
    </div>
    <div class="tm_row"><br>
      <input type="submit" value="Next" name = "saveClass"style = "font-size:20px; width : 300px ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
    </div>
  </form>
</div>

	<script type="text/javascript">
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("datefield").setAttribute("min", today);
	
	</script>
</body>
<footer></footer>
</html>

