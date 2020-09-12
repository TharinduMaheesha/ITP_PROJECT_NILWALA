
<%@page import="com.cart.cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="student_styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Subject Cart</title>
</head>
<body>
<%@ include file="WEB-INF/Student_header.jsp" %> 
<center><h5>Payment in progress</h5></center>
<center><div class="spinner-grow text-primary" role="status"><span class="sr-only">Loading...</span></div></center>
<br>
<div class="progress"><div class="progress-bar" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30% completed</div></div><br><br>


<hr>
	
	
	<center><h4>Subject Cart </h4></center>
	<center><P>Check your cart details and click PAY NOW</P></center> 
<div class="shadow-lg p-3 mb-5 bg-white rounded">

<div>
<ul class="breadcrumb"> 
 <li><a href="#"><b></b></a></li>  
</ul>
</div>
<div style = " max-width: 700px;  margin: auto;" class = "background"  class = "transbox" >
<table style = " align : center;">
<div class="table-responsive">

<form>

<table class="table">
 <thead class="tt">
   <tr>  
     <th scope="col">Student ID</th>
     <th scope="col">Subject Code</th>
     <th scope="col">Name</th>
     <th scope="col">Level</th>
      <th scope="col">Remove</th>
   </tr>
 </thead>
 <tbody>
<%
ArrayList<cart> array = (ArrayList)request.getAttribute("Details");
for(cart car:array){	
%>
   <tr>
      <td><%=car.getStudentID()%></td>
      <td><%=car.getSubjectCode()%></td>
     <td><%=car.getName()%></td>
     <td><%=car.getLevel()%></td>
     <td>
     	<a href="deleteSub.jsp?d=<%=car.getSubjectCode()%>"  onclick="myFunction()" >Remove Subject</a>
     </td>
     
     
     <%} 
     
     %>
     </form>   
   </tr>
 </tbody>
</table>
</div>
<center><input type ="submit" name="PAY NOW" value="PAY NOW" class="btn btn-primary"></center>
<hr>


 <center><p>Here is your total payment for your selected subjects.<br>You can use a bank card for the payment<p></center>
				    <div class="form-group">
				      <label for="disabledTextInput">Total fee</label>
				
				      <input type="text" id="disabledTextInput" class="form-control" disabled>
				    </div>




<script>
function myFunction() {
  alert("subject will be remove from the cart !");
}

</script>
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</body>
</html>