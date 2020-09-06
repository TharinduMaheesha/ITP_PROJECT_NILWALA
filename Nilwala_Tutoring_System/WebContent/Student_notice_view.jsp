<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.security.auth.Subject"%>
<%@page import="Model.SubjectClass"%>
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
  background-color: #3000b3; /* Green */
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
.nbtn:hover{
  background-color: dodgerblue; /* Green */

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

<%@ include file="WEB-INF/Student_header.jsp" %>  


	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home</b></a></li>		  
		</ul>
	</div>
	<hr class = "solid">
	
	<%
		ArrayList<SubjectClass> array = (ArrayList)request.getAttribute("subjects");
	
	for(SubjectClass sub : array){
		
		
		String tid = sub.getTid();
		
		ArrayList<NoticeModel> array2 = NoticeControllerUtil.viewNotices(tid);
		
		if(array2.size() == 0){

	
			
			
			
	
	%>
	  <div style = "width : 100% ; margin: auto ; background-color: #e3e3e3 ; margin-top: 12px; padding-bottom: 50px ; padding-top: 50px ; overflow-x:auto;">
					<p style = "font-family: sans-serif; font-size: 20px ; text-align: center; color : black;"><b> There are no more Notices to be displayed</b></p>
		
			</div>
			
			<%} 
			else{
			
			
			%>
			
			
			<div class = "tm_text_container">
			<%						for(NoticeModel not : array2){

				 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
				 Date date = new SimpleDateFormat("dd/MM/yyyy").parse(not.getDate());
				 SimpleDateFormat formatter1 = new SimpleDateFormat("dd MMMM yyyy");
				 String ndate = formatter1.format(date);

				 
				    Date strDate = formatter.parse(not.getDate());
			
 %>
			
				<div class="notice_row">
					  <div class="notice_column" style="border : 5px solid black; width : 98% ; margin-top: 10px ; margin-left: 15px">
					    <h2>Subject : <%=not.getSubject() %></h2>
					    <h3><b>Notice : <%=not.getDescription() %></b></h3>
					    
					    <p>For Grade : <%=not.getGrade() %></p>
					    <p>By : <%=not.getFname() %>&nbsp<%=not.getLname() %></p>
					    <p>Published On : <%=ndate %></p>
					    
					    
					    
					    		<div class = "some" style = "float : right">
										<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
										<form action="TeacherNoticeControllerServlet" method = "post">
											<input type = "hidden" name = "uid" value = <%=(String)request.getAttribute("UserID") %>>
											<input type = "hidden" value = <%=not.getNid() %> name = "noticeID">
											<input type = "hidden" value = <%=not.getSubject() %> name = "subjectname">
											<input type = "hidden" value = <%=not.getDescription() %> name = "description">
											<input type = "hidden" value = <%=not.getGrade() %> name = "Grade">
											
					    
								</form>
								</div>
					  </div>
			  </div>
<%}}} %>

      
  
</body>
<footer></footer>
</html>