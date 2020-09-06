<%@page import="Util.ClassControllerUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="Teacher_class_home.jsp"><b>Classes</b></a></li>		  
		</ul>
	</div>
	
	<hr class = "solid">
	<br>
	
	<div class = "tm_class_home">
		<div class = "tm_text_container">
			  <div class="tm_column">
				    <div class="tm_card">
				      <p><i class="fa fa-check"></i></p>
				      <%
				      String iid = (String)request.getAttribute("UserID");
				      	String held = ClassControllerUtil.classCount(iid);
				      
				      %>
				      <h3><%=held %></h3>
				      <p>Total Classes held</p>
				    </div>
				  </div>
		</div>
		<div class = "tm_button_container">
			<div class="tm_btn-group1">
					<form action="TeacherClassControllerServlet" method="post">
			
				  <button type="submit" name = "saveClass" value="create">Create Class</button><br>
				  <button type="submit" name = "saveClass" value="manage">Manage Classes</button><br>
				  <button type="submit" name = "saveClass" value="historys">Class History</button><br>
				  <input type ="hidden" name = "user" value=<%=iid %>>
				  				  <input type ="hidden" name = "uid" value=<%=iid %>>
				  
				  			</form>
				  
			</div>
		</div>
	
	</div>
</body>
<footer></footer>
</html>