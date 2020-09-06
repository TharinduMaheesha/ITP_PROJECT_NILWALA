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

@WebServlet("/GetTeacherList")
public class GetTeacherList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			List<TeacherSubject> getTeacherList = DButil.getTeacherList();
			request.setAttribute("getTeacherList", getTeacherList);
					
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("TeacherList.jsp");
		dis.forward(request, response);
		
	}

}
