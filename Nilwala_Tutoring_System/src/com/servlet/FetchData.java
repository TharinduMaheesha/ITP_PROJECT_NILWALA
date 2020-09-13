package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;



@WebServlet("/FetchData")
public class FetchData extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nilwala_online_system"); 
			PreparedStatement ps=con.prepareStatement("select * from schedule");
			ResultSet rs=ps.executeQuery();
			PrintWriter out=response.getWriter();
		
			out.println("<html><body><center><table class=table border=20px;><tr><td>ScheduleId</td><td>SubjectCode</td><td>Teacher's Id</td><td>Created date</td><td>Time from</td><td>Time To</td><td>Class counducting date</td><td>Grade</td></tr>");
			while(rs.next())
			{
				out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getInt(8)+"</td></tr>");
					
			}			
			
			   out.println("</table></center></body></html>");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
