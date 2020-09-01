package com.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.StudentDButil;


@WebServlet("/eventServlet")
public class viewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String StudentID = request.getParameter("StudentID");			
		
		boolean isTrue;
		
		isTrue = StudentDButil.viewCart(StudentID);
		
	
			
		if(isTrue==true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");		 
			dis.forward(request,response)
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("");		
			dis2.forward(request,response);
		}
	}

}
