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
import com.schedule.TeacherDBUtil;


@WebServlet("/DeleteScheduleServlet")
public class DeleteScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String schid = request.getParameter("schid");
		boolean isTrue;
		
		isTrue = TeacherDBUtil.deleteSchedule(schid);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("SuccessDelete.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			List<Teacher> teaDetails = TeacherDBUtil.getScheduleDetails(schid);
			request.setAttribute("teaDetails", teaDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
