package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TM_AdminFetchData
 */
@WebServlet("/TM_AdminFetchData")
public class TM_AdminFetchData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lessonmanagement","root",""); 
			PreparedStatement ps=con.prepareStatement("select * from lesson ");
			ResultSet rs=ps.executeQuery();
			PrintWriter out=response.getWriter();
		
			out.println("<html><body><center><table class=table border=150px;><tr><td>Teacher ID</td><td>Subject Code</td><td>Lesson Number</td><td>Lesson Name</td></tr>");
			while(rs.next())
			{
				out.println("<tr><td>"+rs.getInt(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getInt(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
					
			}			
			
			   out.println("</table></center></body></html>");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
