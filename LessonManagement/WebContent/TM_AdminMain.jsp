<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Admin_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="WEB-INF/Admin_header.jsp" %>  

<div>
		<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#"><b>Home<b></a></li>
		</ul>
	</div>
	
	<form action="AdminFetchData" method="post">
   <center><input type="submit" value="Get All Records" class = "bttr" class = "list-button"></center>
   </form>
	<hr>
</body>
<footer></footer>
