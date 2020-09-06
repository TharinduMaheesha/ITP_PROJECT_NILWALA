<%@page import="Util.ClassControllerUtil"%>
<%@page import="Servlet.TeacherClassControllerServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.SubjectClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#tm_myInput {

  width: 95%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid black;
  margin: auto;
}

#tm_myTable {
  border-collapse: collapse;
  width: 90%;
  border: 1px solid #ddd;
  font-size: 18px;
  margin: auto;
}

#tm_myTable th, #tm_myTable td {
  text-align: center;
  padding: 20px;
}

#tm_myTable tr {
  border-bottom: 2px solid black;
  	  text-align: center;
  
}
#tm_myTable th {
	background-color: #3000b3;
	  color: white;
	  text-align: center;
	  padding: 45px;
	
}
#tm_myTable button {
	  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	   background-color: #3000b3; /* Green background */
  border: 1px solid 3000b3; /* Green border */
  color: white; /* White text */
  padding: 20px 24px; /* Some padding */
  cursor: pointer;
	
}

.tm_row {margin: 0 -5px;}

/* Clear floats after the columns */
.tm_row:after {
  content: "";
  display: table;
  clear: both;
}
}</style>
</head>
<body>

<%@ include file="WEB-INF/Student_header.jsp" %> 

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>
		  		  <li><a href="#"><b>Classes</b></a></li>
		  		  <li><a href="#"><b>Enrolled Classes</b></a></li>
		  		  
		  
		</ul>
	</div>
	<hr class = "solid">

		

	<input type="text" id="tm_myInput" onkeyup="myFunction()" placeholder="Search for subject name.." title="Type in a name">
	
	
	
			<%
			String uid = (String)request.getAttribute("UserID");
		ArrayList<SubjectClass> array = ClassControllerUtil.enrolledClasses(uid);

			
			if(array.size() == 0){
				
			%>
			  <div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
					<p style = "font-family: sans-serif; font-size: 20px ; text-align: center; color : black;"><b> There are no Classes to be displayed at the moment</b></p>
			
			</div>
			
			<br><br>
			<%} 
			
			
	else {

			
		
%>	

		<div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
		<p style = "font-family: sans-serif; font-size: 20px ; text-align: center;"><b> Enroll to attend a class </b></p>
	
			<br><br>
				<table id="tm_myTable">
				  <tr >
				    <th style="width:20%;">ClassID</th>
				    <th style="width:30%;">Subject Name</th>
				    <th style="width:10%;">Grade</th>
				    <th style="width:20%;">Date</th>
				    <th style="width:20%;">Time</th>
				    <th style="width:20%;"></th>
				    
				    
				  </tr>
				  <%			for(SubjectClass sub  : array){
 %>
   <form  action="StudentClassControllerServlet" method="post">
      				    <input type="hidden" value = <%=uid %> name = "uid">
 
				  <tr>
				    <td><b><%=sub.getId() %></b></td>
				    <td><b><%=sub.getSubject() %></b></td>
				    <td><b><%=sub.getGrade() %></b></td>
				    <td><b><%=sub.getDate() %></b></td>
				    <td><b><%=sub.getStart() %></b>	</td>
				
				       <td><button name = "StudentClass" value = "Enter" style="width:auto;">Enter</button>
				  
				    <input type="hidden" value = <%=sub.getId() %> name = "class_id">
				    
				  </tr>
				  </form>
				<%} %>
				</table>
 				
				  <%	
					}
			
	%>
		
				<script>
						function myFunction() {
						  var input, filter, table, tr, td, i, txtValue;
						  input = document.getElementById("tm_myInput");
						  filter = input.value.toUpperCase();
						  table = document.getElementById("tm_myTable");
						  tr = table.getElementsByTagName("tr");
						  for (i = 0; i < tr.length; i++) {
						    td = tr[i].getElementsByTagName("td")[1];
						    if (td) {
						      txtValue = td.textContent || td.innerText;
						      if (txtValue.toUpperCase().indexOf(filter) > -1) {
						        tr[i].style.display = "";
						      } else {
						        tr[i].style.display = "none";
						      }
						    }       
						  }
						  
						}
					</script>
	
	</div>

	 
</body>
<footer></footer>
</html>

