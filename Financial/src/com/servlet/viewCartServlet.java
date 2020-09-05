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


@WebServlet("/viewCartServlet")
public class viewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String stuID = request.getParameter("sid");			
	
			List<Student> cartDetails=StudentDButil.viewCart(stuID);
			request.setAttribute("cartDetails",cartDetails);
	
			RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");		 
			dis.forward(request,response);
	
	}

}
