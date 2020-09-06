package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Util.*;
import Model.*;

@WebServlet("/RegTeacherSub")
public class RegTeacherSub extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subjectCode = request.getParameter("subj_code");
		String subjectGrade = request.getParameter("subj_grade");
		String teacherId = request.getParameter("tea_id");
		
		boolean isTrue;
		
		isTrue = DButil.RegisterTeacher(teacherId, subjectCode, subjectGrade);
		
		if(isTrue == true){
			
			RequestDispatcher dis = request.getRequestDispatcher("TeacherSuccess.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("TeacherUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
