<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Get  code at fontawesome.com to get icons-->
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel = "stylesheet"
   type = "text/css"
   href = "ScheduleManagement.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<style>

.Insertpagelabel{

color: black;
text-decoration:none;
}

.btn1{

position:relative;
left:40px;
top:40px;
colour:red

}

.btn2{

position:relative;
left:1050px;
top:-60px;
colour:red

}

.InsertBtn{
border: none;
background-color: #009900;
border-color:#006600;
border-radius:10px;
  color: black;
  padding: 10px 15px;
  font-size: 14px;
  cursor: pointer;
  border-style: solid;
  border-color: black;
 } 
 
 .wrnmassage{
 position:relative;
 color:  #2eb82e;
 font-size: 18px;
 }
 
 
.rq {
color: black;
font-size: 10pt;
}
 
 


</style>
   
</head>
<body>

<%@ include file="WEB-INF/Teacher_header.jsp" %>  

	<div>
		<ul class="breadcrumb"> <!--   add your path example : Subject / Add Subject 1st li subject 2nd li Add Subject . change accordingly-->
		  <li><a href="ScheduleHome.jsp"><b>Shedule</b></a></li>		  
		</ul>
	</div>
	<hr><br>
	
	
	<center><div class="wrnmassage">
	<i class="material-icons" style="font-size:30px;color: red">error</i>
	<label><b>You must delete your previous week's schedule to create a new schedule...!!!<b></label><br>
	</div><br><br></center>

<center><form action="insert" method="post" name="formInsertSchedule" onsubmit="required()">
  <div class="Schedule-container">
	   <h3>Create a  new schedule..</h3>
	          <p>Please fill this form to create a new schedule....</p>
	   <hr>
	
	 <label for="subjectcode"><b>Subject Code:</b></label>
	 <input type="text" placeholder="Enter the subject code" name="subjectcode" id="subjectcode" size=5  class="rq"><br><br>
	 
	 <label for="teacherId"><b>Teacher's Id:</b></label>
	 <input type="text" placeholder="Enter the techer's Id" name="teacherId" id="teacherid" class="rq"><br><br>
	 
	  <label for="ceatedDate"><b>Creating Date:</b></label>
	  <input type="date" placeholder="Enter the Created date" name="ceatedDate" id="ceatedDate" required><br><br>
	  
	  <label for="timeFrom"><b>Starting time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeFrom" id="timeFrom" required><br><br>
	
	  <label for="timeFrom"><b>Ending time:</b></label>
	  <input type="time" placeholder="Enter the Created date" name="timeTo" id="timeTo" required><br><br>
	  
	  <label for="classdate"><b>Class conducting date:</b></label><br>
	  <input type="date" placeholder="Enter the Class date" name="classdate" id="classdate" required><br><br>
	  
	  <label for="grade"><b>Grade:</b></label><br>
	  <input type="text" placeholder="Enter the grade" name="grade" id="grade" required><br><br>
	  <hr>
	  
	
	
	 <b><button type="submit" name="submit" value="Schedule a new schedule" class="addbtn" onclick="validatedate(document.form1.ceatedDate)" onclick="allnumeric(document.form1.grade)" onclick="CheckDecimal(document.form1.grade)">Schedule a new session</button><br>
	 <br>
	 <br>
	 
 </div>
	
</form></center><br><br>
	
	  
	  <div class = "btn1">
	  <label>Click here to veiw all session details..,</label><br><br>
     <a href="ViewAllSessionDetails.jsp">
      <button class="InsertBtn"><span><b>View all scheduled session details</b> </span></button>
     </a><br>
     </div><br><br>

     <div class = "btn2">
     <label>Click here to change all the session details,</label><br><br>
     <a href="login.jsp">
      <button class="InsertBtn"><span><b>Change sheduled session details</b> </span></button>
     </a><br>
     </div>
     
     
     
     
     <script>
     
     
     
     //check date have correct format:
     
     function validatedate(inputText)
     {
     var dateformat = /^(0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])[\/\-]\d{4}$/;
     // Match the date format through regular expression
     if(inputText.value.match(dateformat))
     {
     document.form1.ceatedDate.focus();
     //Test which seperator is used '/' or '-'
     var opera1 = inputText.value.split('/');
     var opera2 = inputText.value.split('-');
     lopera1 = opera1.length;
     lopera2 = opera2.length;
     // Extract the string into month, date and year
     if (lopera1>1)
     {
        var pdate = inputText.value.split('/');
     }
     else if (lopera2>1)
     {
         var pdate = inputText.value.split('-');
     }
         var mm  = parseInt(pdate[0]);
         var dd = parseInt(pdate[1]);
         var yy = parseInt(pdate[2]);
     // Create list of days of a month [assume there is no leap year by default]
     var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];
      if (mm==1 || mm>2)
        {
           if (dd>ListofDays[mm-1])
             {
                 alert('Invalid date format!');
                    return false;
             }
        }
     if (mm==2)
        {
            var lyear = false;
                if ( (!(yy % 4) && yy % 100) || !(yy % 400)) 
                 {
                     lyear = true;
                  }
        if ((lyear==false) && (dd>=29))
         {
             alert('Invalid date format!');
             return false;
          }
         if ((lyear==true) && (dd>29))
          {
             alert('Invalid date format!');
              return false;
           }
       }
     }
     else
     {
            alert("Invalid date format!");
            document.form1.text1.focus();
           return false;
       }
     }

     
     
     
     
     
     
     
     
     
     //validation for required subject code teachers id: 
     function required()
     {
               var empt = document.forms["formInsertSchedule"]["subjectcode"]["teacherId"].value;
               if (empt == "")
                  {
                       alert("Please input a Value");
                       return false;
                   }
               else 
                  {
                      alert('Code has accepted : you can try another');
                       return true; 
                   }
               
     }
        
   
     
     
     
     
   //check whether grade have only numbers:
   function allnumeric(inputtxt)
   {
               var numbers = /^[0-9]+$/;
               
       if(inputtxt.value.match(numbers))
             {
                    alert('Your Registration number has accepted....');
                    document.form1.grade.focus();
                    return true;
             }
       else
             {
                     alert('Please input numeric characters only');
                     document.form1.grade.focus();
                     return false;
              }
   } 
   
   //check whether grade has floating numbers
   
   function CheckDecimal(inputtxt) 
    { 
               var decimal=  /^[-+]?[0-9]+\.[0-9]+$/; 
                    if(inputtxt.value.match(decimal)) 
                       { 
                            alert('Correct, try another...')
                            return true;
                       }
                    else
                       { 
                            alert('Wrong...!')
                            return false;
                       }
    } 
   
   
   
   
     
     
     
     
     </script>





</body>
</html>