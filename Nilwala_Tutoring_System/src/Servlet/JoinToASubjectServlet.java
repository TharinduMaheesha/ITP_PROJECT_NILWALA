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
@WebServlet("/JoinToASubjectServlet")
public class JoinToASubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subCode = request.getParameter("s_code");
		String teacherid = request.getParameter("t_id");
		String studentId = request.getParameter("stu_ID");
		String paymSt = request.getParameter("pay");
		
		boolean isTrue;
		
		isTrue = DButil.joinToSubject(teacherid, subCode, studentId, paymSt);
				
		if(isTrue == true){
			
			RequestDispatcher dis = request.getRequestDispatcher("StudentSuccess.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("StudentUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
