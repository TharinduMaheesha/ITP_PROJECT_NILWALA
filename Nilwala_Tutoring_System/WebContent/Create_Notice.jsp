<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div.main{
	background-color: #D8D8D8;
	ont-family: sans-serif;
	font-size: 20px;
	padding-left:100px;
	padding-top:50px;
	padding-bottom:20px;
	
}

div.Description{
	
	margin-top:-10px;
	padding-right:100px;
	float:right;
	

	
}

.some button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 8px;
  margin-top:20px;
  
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
  color: green;
  text-decoration: underline;
}

</style>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><b>Create Notice</b></li>		  
		</ul>
	</div>
	<hr>
	
	<div class="main">
		<form action="TeacherNoticeControllerServlet" method = "post">
		<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
		
				<div class="Description">
				
				<label for="Description">Description</label> <br>

				<textarea id="Description" name="Description" rows="11" cols="50"></textarea>
		
				</div>
	
				
				
				<label>Grade :</label>
				<input type="text" name="Grade" size="50"><br><br>
				
				<label>Subject :</label>
				<input type="text" name="Subject" size="50"><br><br>
				
				
				
				
				
				
	
			
			<div class = "some" >
			
				<button type="submit" name = "notice" value = "create">Create</button>
				
				<button type="button" onclick="history.back()">Cancel</button>
			
			</div>
		</form>
	</div>
	
	<hr>
</body>
<footer></footer>
</html>