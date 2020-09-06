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

@WebServlet("/ShowSubjectsToJoinServ")
public class ShowSubjectsToJoinServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Grade = request.getParameter("getGrade");
		String Medium = request.getParameter("getMedium");
		
		try {
			
			List<StudentShowSubject> Showgrade = DButil.StudentShowSubjects(Grade, Medium);
			request.setAttribute("Showgrade", Showgrade);
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("JoinToSubject.jsp");
		dis.forward(request, response);
		
	}

}
