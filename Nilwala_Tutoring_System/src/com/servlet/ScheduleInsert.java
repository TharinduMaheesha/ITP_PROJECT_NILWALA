package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.TeacherDBUtil;


@WebServlet("/ScheduleInsert")
public class ScheduleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject_code =  request.getParameter("subjectcode");
		String teacher_id =  request.getParameter("teacherId");
		String date_created =  request.getParameter("ceatedDate");
		String time_from =  request.getParameter("timeFrom");
		String time_to =  request.getParameter("timeTo");
		String class_date =  request.getParameter("classdate");
		String grade =  request.getParameter("grade");
		
		boolean isTrue;
		
		isTrue = TeacherDBUtil.Insertschedule(subject_code, teacher_id, date_created, time_from, time_to, class_date, grade);
        
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}
