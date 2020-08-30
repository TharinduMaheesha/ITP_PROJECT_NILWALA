<%@page import="Model.SubjectClass"%>
<%@page import="Util.ClassControllerUtil"%>
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
<%

SubjectClass s = ClassControllerUtil.test();


%>

<video controls>
  <source src=<%=s.getVideo() %> >
</video>

</body>
</html>