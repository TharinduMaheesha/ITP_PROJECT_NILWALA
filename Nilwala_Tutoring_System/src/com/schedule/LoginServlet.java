package com.schedule;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject_code = request.getParameter("sid");
		
		try {
		           List<Teacher> teaDetails = TeacherDBUtil.validate(subject_code);
		           request.setAttribute("teaDetails", teaDetails);
		}
		catch(Exception e)
		{
			        e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("scheduleaccount.jsp");
		dis.forward(request, response);
		
		
	}

}
