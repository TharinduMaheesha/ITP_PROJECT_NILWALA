package com.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.EventDButil;


@WebServlet("/eventServlet")
public class eventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String fname = request.getParameter("fname");			
		String lname = request.getParameter("lname");
		String school = request.getParameter("school");
		String grade = request.getParameter("grade");
		String email = request.getParameter("email");

		
		boolean isTrue;
		
		isTrue = EventDButil.insertVisitor(fname,lname,school,grade,email);
		
	
			
		if(isTrue==true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("done.jsp");		 
			dis.forward(request,response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("done.jsp");		
			dis2.forward(request,response);
		}
	}

}
