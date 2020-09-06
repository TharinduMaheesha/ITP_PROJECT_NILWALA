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



@WebServlet("/TM_TeacherLoginSer")
public class TM_TeacherLoginSer extends HttpServlet {
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
		RequestDispatcher dis = request.getRequestDispatcher("TM_LessonAccount.jsp");
		dis.forward(request, response);
		
	}

}
