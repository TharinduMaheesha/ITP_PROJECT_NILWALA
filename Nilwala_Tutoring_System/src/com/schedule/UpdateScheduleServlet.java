package com.schedule;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateScheduleServlet")
public class UpdateScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String schid = request.getParameter("schid");
		String subjectcode = request.getParameter("subjectcode");
		String teacherid = request.getParameter("techerid");
		String createdate = request.getParameter("createdate");
		String timefrom = request.getParameter("timefrom");
		String timeto = request.getParameter("timeto");
		String classdate = request.getParameter("classdate");
		String grade = request.getParameter("grade");
		
		boolean isTrue;
		
		isTrue = TeacherDBUtil.updateSchedule(schid, subjectcode, teacherid, createdate, timefrom, timeto, classdate, grade);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}
	

}
