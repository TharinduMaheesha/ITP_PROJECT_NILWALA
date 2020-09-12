package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.StudentDButil;


@WebServlet("/DeleteSubject")
public class deleteSubSev extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Subject_code = request.getParameter("subject_code");
		boolean isTrue ;
		
		isTrue = StudentDButil.deleteSubject(Subject_code);
		
		if(isTrue == true)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
			dispatcher.forward(request, response);
		}
		
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("totalFee.jsp");
			dis2.forward(request, response);
		}
		
	}

}
