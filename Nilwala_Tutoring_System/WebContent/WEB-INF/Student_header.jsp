<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">


<style>/* Add a black background color to the top navigation */
.topnav {
  background-color: black;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.btn{
  color: white;
  text-align: center;
  text-decoration: none;
  font-size: 17px;
  background: none;
  border: none;
  outline: none;
  
}
.btn:hover{
background-color: blue;
  color: white;
}
.btn:focus{
  outline: none;

}
/* Add an active class to highlight the current page */

/* Hide the link that should open and close the topnav on small screens */
.topnav .icon {
  display: none;
}

/* Dropdown container - needed to position the dropdown content */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Style the dropdown button to fit inside the topnav */
.dropdown .dropbtn {
  font-size: 17px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

/* Style the dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Style the links inside the dropdown */
.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a dark background on topnav links and the dropdown button on hover */
.topnav a:hover, .dropdown:hover .dropbtn {
  background-color: blue;
  color: white;
}

/* Add a grey background to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

/* Show the dropdown menu when the user moves the mouse over the dropdown button */
.dropdown:hover .dropdown-content {
  display: block;
}

/* When the screen is less than 600 pixels wide, hide all links, except for the first one ("Home"). Show the link that contains should open and close the topnav (.icon) */
@media screen and (max-width: 1000px) {
  .topnav a:not(:first-child), .dropdown .dropbtn {
    display: none;
  }
  .topnav a.icon {
    float: right;
    display: block;
  }
  
}

/* The "responsive" class is added to the topnav with JavaScript when the user clicks on the icon. This class makes the topnav look good on small screens (display the links vertically instead of horizontally) */
@media screen and (max-width: 1000px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive a.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  .topnav.responsive .dropdown {float: none;}
  .topnav.responsive .dropdown-content {position: relative;}
  .topnav.responsive .dropdown .dropbtn {
    display: block;
    width: 100%;
    text-align: left;
  }
}

.responsives {
  width:99.95%;
  max-width: 100%;
  height: 270px;
   display: block;
  margin-left: auto;
  margin-right: auto;
 
  
}


hr.rounded {
  border-top: 8px solid #bbb;
  border-radius: 5px;
  width: 99.9%;
}

body {
  font-family: Arial, Helvetica, sans-serif;
    margin: 0;
  
}
* {
  box-sizing: border-box;
}
.header {

  height : auto;
  width : 100%;
  max-width: 100%;
  display: block;
  
}
* {
  box-sizing: border-box;
}


</style>

</head>
<body>


		<div class = "header">
			<img src=".\images\blue.png"  class="header">
		</div>

	
<form action="StudentClassControllerServlet" method="post" id = "form">
	  <%
	  
	  String id = (String)request.getAttribute("UserID");
	  
	  %>
	  <input type="hidden" value=<%=id %> name = "uid">
	<div class="topnav" id="myTopnav">
	  <a><button class="btn" type="submit" name = "StudentClass" value ="home">Home</button></a>
	  <a><button class="btn" type="submit" name = "StudentClass" value ="subject">Subjects</button></a>
	  	  <a><button class="btn" type="submit" name = "StudentClass" value ="lesson">Lessons</button></a>
	  
	  <a><button class="btn" type="submit" name = "StudentClass" value ="class">Classes</button></a>
	  <a><button class="btn" type="submit" name = "StudentClass" value ="schedule">Schedule</button></a>
	  <a><button class="btn" type="submit" name = "StudentClass" value ="tute">Tutorials</button></a>
	  <a><button class="btn" type="submit" name = "StudentClass" value ="appointment">Notices & Appointments</button></a>
	  <a><button class="btn" type="submit" name = "StudentClass" value ="cart">Payments</button></a>
  <div class="dropdown">
	    <button class="dropbtn" disabled>Account
	      <i class="fa fa-caret-down"></i>
	    </button >
	    <div class="dropdown-content">
	  <a><button class="btn" type="submit" name = "saveClass" value ="blah">Profile</button></a>
	  <a href='Unregistered_user_home.jsp'>Log Out</a>
	    </div>
	    
  </div>

    <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
  
</div>
	    	  </form>
 
  
	  
	  
	 
			<hr class= "rounded">
		
	
<script>
function myFunction() {
	  var x = document.getElementById("myTopnav");
	  if (x.className === "topnav") {
	    x.className += " responsive";
	  } else {
	    x.className = "topnav";
	  }
	}
</script>
</body> 

</html>