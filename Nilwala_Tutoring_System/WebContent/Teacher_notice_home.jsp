<%@page import="Util.ClassControllerUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

.tm_class_home{
	display : flex;
	width : 99%;
	margin : auto;
	height : 500px;
	background-color : #e3e3e3;
}
.tm_text_container{
	flex : 1;
	width : 100%;
	margin: auto;
	
}
.tm_button_container{
	width : 50%;
	flex : 1;
	margin: auto;	
}


* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.tm_column {
  float: left;
  width: 90%;
  height:auto;
  padding: 0px 0px 0px 50px;
}

.tm_row {margin: 0 -5px;}

/* Clear floats after the columns */
.tm_row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .tm_column {
    width: 100%;
    display: block;
    margin-bottom: 10px;
  }
}

/* Style the counter cards */
.tm_card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 80px;
  text-align: center;
  background-color: #444;
  color: white;
}

.tm_fa {font-size:50px;}

</style>
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
				      <h3><%=iid %></h3>
				      <p>Total Notices </p>
				    </div>
				  </div>
		</div>
		<div class = "tm_button_container">
			<div class="tm_btn-group1">
					<form action="TeacherNoticeControllerServlet" method="post">
			
				  <button type="submit" name = "notice" value="addNotice">Add New Notice</button><br>
				  <button type="submit" name = "notice" value="myNotices">My Notices</button><br>
				  <input type ="hidden" name = "user" value=<%=iid %>>
				  				  <input type ="hidden" name = "UserID" value=<%=iid %>>
				  				  <input type ="hidden" name = "uid" value=<%=iid %>>
				  				  
				  
				  			</form>
				  
			</div>
		</div>
	
	</div>
</body>
<footer></footer>
</html>