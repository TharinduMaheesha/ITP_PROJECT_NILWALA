package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.StudentDButil;


@WebServlet("/salaryUpdateServlet")
public class salaryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
				String teacherID = request.getParameter("TID");
				String amount = request.getParameter("amount");
				String description = request.getParameter("des");
				String type = request.getParameter("ty");
	
				boolean isTrue;
				
				isTrue = StudentDButil.insertSal(teacherID, amount, description, type);
	
						if(isTrue==true) {
							RequestDispatcher dis = request.getRequestDispatcher("adminDash.jsp");
							dis.forward(request,response);
						}
						else {
							RequestDispatcher dis2 = request.getRequestDispatcher("adminDash.jsp");
							dis2.forward(request,response);
						}
	}

}
