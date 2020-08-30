<%@page import="java.sql.*"%>
<%@page import="Util.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%
    try{
        Connection conn = DBConnect.getConnection();
        PreparedStatement stat = null;
        ResultSet rs = null;
        
        String sql = "select * from user where user_name = ?";
        stat = conn.prepareStatement(sql);
        
        stat.setString(1, request.getParameter("uname"));
        rs = stat.executeQuery();

        if (rs.next())
         {
              response.setContentType("text/xml");
              response.setHeader("Cache-Control", "no-cache");
              response.getWriter().write("Someone already has that username. Try another?");
          } else
            {
              response.setContentType("text/xml");
              response.setHeader("Cache-Control", "no-cache");
              response.getWriter().write("");
           }
        }catch (Exception e){
            System.out.println(e);  
            
        }    
    
    %>

</body>
</html>