<%@page import="Util.ClassControllerUtil"%>
<%@page import="Servlet.TeacherClassControllerServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.SubjectClass"%>
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
		   <li><a href="#"><b>Manage Classes</b></a></li>		  
		  	  
		</ul>
	</div>
	<hr>
	
	<input type="text" id="tm_myInput" onkeyup="myFunction()" placeholder="Search for subject name.." title="Type in a name">
	
	
	
			<%
		ArrayList<SubjectClass> array = ClassControllerUtil.AvailableClasses();

			
			if(array.size() == 0){
				
			%>
			  <div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
					<p style = "font-family: sans-serif; font-size: 20px ; text-align: center; color : black;"><b> There are no Classes to be displayed at the moment</b></p>
			
      <input onclick="window.location.href = 'Teacher_create_class.jsp'" type="button" value="Create Class" name = "editClass"style = "margin-right : 10px ; font-size:20px; width : 20% ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
			</div>
			
			<br><br>
			<%} 
			
			
	else {

			
		
%>	

		<div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
		<p style = "font-family: sans-serif; font-size: 20px ; text-align: center;"><b> Select a class to view or edit </b></p>
	
			<br><br>
				<table id="tm_myTable">
				  <tr class="tm_header">
				    <th style="width:20%;">ClassID</th>
				    <th style="width:30%;">Subject Name</th>
				    <th style="width:10%;">Grade</th>
				    <th style="width:20%;">Date</th>
				    <th style="width:20%;">Time</th>
				    <th style="width:20%;"></th>
				    
				    
				  </tr>
				  <%			for(SubjectClass sub  : array){
 %>
<form method="post" action="TeacherClassControllerServlet">
				  <tr>
				    <td><b><%=sub.getId() %></b></td>
				    <td><b><%=sub.getSubject() %></b></td>
				    <td><b><%=sub.getGrade() %></b></td>
				    <td><b><%=sub.getDate() %></b></td>
				    <td><b><%=sub.getStart() %></b>	</td>
				    <td><b><button name = "saveClass" value = "select">Select</button>
				    
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