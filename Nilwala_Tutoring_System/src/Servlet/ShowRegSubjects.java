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

@WebServlet("/ShowRegSubjects")
public class ShowRegSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String TID = request.getParameter("TeacherID");
			
			try {
				
				List<TeacherSubject> RegisteredSubList = DButil.getRegList(TID);
				request.setAttribute("RegisteredSubList", RegisteredSubList);
				
			}
			
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("ShowRegisteredSubs.jsp");
			dis.forward(request, response);
			
		}


	

}
