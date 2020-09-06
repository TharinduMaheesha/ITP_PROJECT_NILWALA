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

@WebServlet("/AddnewSubject")
public class AddnewSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject_code = request.getParameter("sub_code");
		String subject_name = request.getParameter("sub_name");
		String subject_level = request.getParameter("sub_level");
		String subject_grade = request.getParameter("sub_grade");
		String subject_medium = request.getParameter("sub_medium");
		String subject_fee = request.getParameter("sub_fee");
		
		boolean isTrue;
		
		isTrue = DButil.addNewSubject(subject_code, subject_name, subject_level, subject_grade, subject_medium, subject_fee);
		
		if(isTrue == true){
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminSuccess.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("AdminUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
	}

}
