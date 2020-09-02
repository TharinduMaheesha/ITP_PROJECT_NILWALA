package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lesson.TM_Lesson;
import com.util.TM_LessonDButil;

/**
 * Servlet implementation class TM_TeViewLessonSer
 */
@WebServlet("/TM_TeViewLessonSer")
public class TM_TeViewLessonSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String teacher_id = request.getParameter("teacherid");
		String subject_code = request.getParameter("subjectcode");

		try {
		List<TM_Lesson> teaDetails = TM_LessonDButil.validate(subject_code);
		request.setAttribute("teaDetails", teaDetails);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("TM_TeacherViewLesson.jsp");
		dis.forward(request, response);
	}

}
