<%@page import="Model.UserModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Util.ClassControllerUtil"%>
<%@page import="Model.SubjectClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th {
  text-align: center;
  padding: 16px;
  background-color : green;
  color : white;
    font-size : 20px

    
 
}
td {
  text-align: center;
  padding: 16px;
  font-weight : bold;
  font-size : 18px
}

tr:nth-child(even) {
  background-color: ;
}
</style>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>	
		   <li><a href="Teacher_available_classes.jsp"><b>Class History</b></a></li>		  
		   <li><a href="#"><b>Class Attendance </b></a></li>		  
		  	  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	<div class = "tm_container">
	<input type = "hidden" value= <%=(String)request.getAttribute("UserID") %> name = "uid">
			<table>
			  <tr>
			    <th>Student ID</th>
			    <th>Student Name</th>
			  </tr>
			  	<%
		
		ArrayList<UserModel> user = (ArrayList)request.getAttribute("id");
		
		for(UserModel u : user){
	
	%>
			  <tr>
			    <td><%=u.getId() %></td>
			    <td><%=u.getFname() %>&nbsp<%=u.getLname() %></td>
			  </tr>
			  <%} %>
			</table>
				
				</div>
	
	
	
	
	

</body>
<footer></footer>
</html>