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

@WebServlet("/RemoveTeacherServlet")
public class RemoveTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String SubjectC = request.getParameter("subCode");
		
		boolean isTrue ;
		
		isTrue = DButil.Unregister(SubjectC);
		
		if(isTrue == true)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminSuccess.jsp");
			dispatcher.forward(request, response);
		}
		
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("AdminUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
