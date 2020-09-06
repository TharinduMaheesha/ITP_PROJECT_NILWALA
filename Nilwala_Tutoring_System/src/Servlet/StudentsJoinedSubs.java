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

@WebServlet("/StudentsJoinedSubs")
public class StudentsJoinedSubs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studentid = request.getParameter("studentID");
		
		try {
			
			List<Model.StudentSubscription> joinedSubjects = DButil.getYourSubjectList(studentid);
			request.setAttribute("joinedSubjects", joinedSubjects);
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("GetYourSubjects.jsp");
		dis.forward(request, response);
		
	}


}
