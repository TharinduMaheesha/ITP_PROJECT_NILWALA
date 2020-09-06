package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Util.*;
import Model.*;

@WebServlet("/ShowSubjects")
public class ShowSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String grade = request.getParameter("getGrade");
		String medium = request.getParameter("getMedium");
		
		try {
			
			List<Subject> subjectDetails = DButil.getSubject(grade, medium);
			request.setAttribute("subjectDetails", subjectDetails);
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ShowSubjects.jsp");
		dis.forward(request, response);
		
	}

}
