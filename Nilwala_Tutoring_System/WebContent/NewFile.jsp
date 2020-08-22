<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #066c75;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 80px;
  border-radius: 4px;
}

.header a.logo {
width : 350px;
max-width: 100%;
height : 100%;
  font-size: 25px;
  font-weight: bold;
  background-image: url("./images/green_header1.png");
  background-size: cover;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 800px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>
<link rel="stylesheet" href="./Admin_styles.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
  <a href="#default" class="logo">&nbsp</a>
  <div class="header-right">
    <a  href="#home">Home</a>
    <a href="#contact">Subjects</a>
    <a href="#about">Classes</a>
        <a href="#about">Tutorials</a>
        <a href="#about">Users</a>
                <a href="#about">Account</a>
        
    
  </div>
</div>

<ul class="breadcrumb"><!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="#">Home</a></li>
		</ul>
	</div>
	
</body>
</html>