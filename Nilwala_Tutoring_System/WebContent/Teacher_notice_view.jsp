<%@page import="Util.NoticeControllerUtil"%>
<%@page import="Model.NoticeModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="teacher_styles.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.notice_column {
  float: left;
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
}

/* Clear floats after the columns */
.notice_row:after {
  content: "";
  display: table;
  clear: both;
  width : 100%
}
.tm_text_container{
	width : 99%;
	margin: auto;
	background-color: #ddd; 
	
}
/* Style the buttons */
.some .nbtn{
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
  margin-left: 5px;
  
}
.something{
 background-color: white; /* Green */
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 8px;
  margin-top:20px;
  margin-left: 5px;
  }
  p{
  font-weight: bold;
  font-size: 20px;
  }
  h2{
  text-align: center;
  font-weight: bold;
  }
</style>
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  


	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
	<hr class = "solid">
	
	<%
		ArrayList<NoticeModel> array = NoticeControllerUtil.viewNotices((String)request.getAttribute("UserID"));
		
		if(array.size() == 0){
			
			
			
		
	
	
	%>
	  <div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
					<p style = "font-family: sans-serif; font-size: 20px ; text-align: center; color : black;"><b> There are no Notices to be displayed</b></p>
		
		<form action="TeacherNoticeControllerServlet" method = "post">
				<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
		
      <input  type="submit" name = "notice" value="AddNotice"style = "margin-right : 10px ; font-size:20px; width : 20% ; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); padding: 20px 24px">
		</form>	
			</div>
			
			<%} 
			else{
			
			
			%>
			
			
			<div class = "tm_text_container">
			<%				for(NoticeModel not : array){
				
			
 %>
			
				<div class="notice_row">
					  <div class="notice_column" style="border : 2px solid black; width : 98% ; margin-top: 10px ; margin-left: 15px">
					    <h2>Notice ID : <%=not.getNid() %></h2>
					    <p>Grade : <%=not.getGrade() %></p>
					    <p>Subject : <%=not.getSubject() %></p>
					    <p>Notice : <%=not.getDescription() %></p>
					    
					    
					    		<div class = "some" style = "float : right">
										<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
										<form action="TeacherNoticeControllerServlet" method = "post">
											<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
											<input type = "hidden" value = <%=not.getNid() %> name = "noticeID">
											<input type = "hidden" value = <%=not.getSubject() %> name = "subjectname">
											<input type = "hidden" value = <%=not.getDescription() %> name = "description">
											<input type = "hidden" value = <%=not.getGrade() %> name = "Grade">
											
					    
									<button type="submit" name = "notice" value = "editnotice" class = "nbtn">Edit</button>
									<button type="button" class="nbtn" data-toggle="modal" data-target="#myModal">Delete</button>
								</form>
								</div>
					  </div>
			  </div>
			     <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Alert</h4>
        </div>
        <div class="modal-body">
          <p>Are you sure you want to delete ?
          </p>
        </div>
        <div class="modal-footer">
         <form action="TeacherNoticeControllerServlet" method = "post"> 
         				<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
         
         <input type="hidden" value= <%=not.getNid() %> name = "nid">
         <button type="submit" class = "something"  style="background-color: red" name = "notice" value = "delete">Delete</button>
          <button type="button" class = "something" data-dismiss="modal" style = "color : black ; border: 1px solid black">Close</button></form>

        </div>
      </div></div></div>
			  <%}} %>
			  
	 	 </div>

      
  
</body>
<footer></footer>
</html>