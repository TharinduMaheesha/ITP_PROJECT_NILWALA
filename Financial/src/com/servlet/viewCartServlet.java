package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.Student;
import com.util.StudentDButil;


@WebServlet("/eventServlet")
public class viewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String studentID = request.getParameter("ID");			
		
		try {
			List<Student> cartDetails=StudentDButil.viewCart(studentID);
			request.setAttribute("cartDetails",cartDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
			
			RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");		 
			dis.forward(request,response);
	
	}

}
