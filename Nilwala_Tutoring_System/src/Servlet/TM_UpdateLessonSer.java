package Servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.*;

/**
 * Servlet implementation class TM_UpdateLessonSer
 */
@WebServlet("/TM_UpdateLessonSer")
public class TM_UpdateLessonSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String teacher_id = request.getParameter("teacherid");
		String subject_code = request.getParameter("subjectcode");
		String lesson_no = request.getParameter("lessonno");
		String lesson_name = request.getParameter("lessonname");
		String material = request.getParameter("material");
	
		boolean isTrue;
		
		isTrue = TM_LessonDButil.updatelesson(teacher_id,subject_code, lesson_no, lesson_name);	
		isTrue = TM_LessonDButil.updatelessonM(teacher_id,subject_code, lesson_no, material);		

		if(isTrue == true) {
			
		
	
			RequestDispatcher dis = request.getRequestDispatcher("TM_AddSuccess.jsp");
			dis.forward(request, response);
		}
		else {


			RequestDispatcher dis = request.getRequestDispatcher("TM_AddUnsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
