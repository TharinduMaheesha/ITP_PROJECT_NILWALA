package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.StudentDButil;

/**
 * Servlet implementation class AddSalarySev
 */
@WebServlet("/AddSalarySev")
public class AddSalarySev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String teacherid = request.getParameter("teacherID");
		String amountt =request.getParameter("amount");
		String month=request.getParameter("month");
		
		boolean isTrue;
		
		isTrue = StudentDButil.insertsalary(teacherid,month);
		isTrue =StudentDButil.insertSalary2(amountt);
	
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("test.jsp");
			dis1.forward(request, response);
		}
	}

}
