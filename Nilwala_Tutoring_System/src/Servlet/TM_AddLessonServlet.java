package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.*;
import Util.*;


/**
 * Servlet implementation class TM_AddLessonServlet
 */
@WebServlet("/TM_AddLessonServlet")
public class TM_AddLessonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String teacher_id = request.getParameter("teacherid");
		String subject_code = request.getParameter("subjectcode");
		String lesson_no = request.getParameter("lessonno");
		String material = request.getParameter("material");
		String lesson_name = request.getParameter("lessonname");

		boolean isTrue;
		
		isTrue = TM_LessonDButil.insertlesson(teacher_id,subject_code,lesson_no,material);
		isTrue = TM_LessonDButil.insert(teacher_id,subject_code,lesson_no,lesson_name);
		
		if(isTrue == true) {
	
			List<TM_Lesson> teaDetails = TM_LessonDButil.getLessonDetails(subject_code);
			request.setAttribute("teaDetails", teaDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TM_AddSuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<TM_Lesson> teaDetails = TM_LessonDButil.getLessonDetails(subject_code);
			request.setAttribute("teaDetails", teaDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TM_AddUnsuccess.jsp");
			dis.forward(request, response);
		}
	
	}
}
