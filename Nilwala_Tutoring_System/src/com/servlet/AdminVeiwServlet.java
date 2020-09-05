package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.schedule.Teacher;
import com.util.TeacherDBUtil;

/**
 * Servlet implementation class AdminVeiwServlet
 */
@WebServlet("/AdminVeiwServlet")
public class AdminVeiwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		
		RequestDispatcher dis = request.getRequestDispatcher("AdminSheduleDetails.jsp");
		dis.forward(request, response);
		
		
	}

}
