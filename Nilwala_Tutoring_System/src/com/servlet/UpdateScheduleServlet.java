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
			
			List<Teacher> teaDetails = TeacherDBUtil.getScheduleDetails(schid);
			request.setAttribute("teaDetails" , teaDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("scheduleaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Teacher> teaDetails = TeacherDBUtil.getScheduleDetails(schid);
			request.setAttribute("teaDetails" , teaDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("scheduleaccount.jsp");
			dis.forward(request, response);
			
		}
	}
	

}
