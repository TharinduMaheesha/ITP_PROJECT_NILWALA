package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.cart;
import com.util.StudentDButil;

@WebServlet("/refundServlet")
public class refundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reason = request.getParameter("reason");
		String student_id = request.getParameter("uid");
	
	
		boolean isTrue;
		
		isTrue = StudentDButil.insertRefundA(reason,student_id);
		//isTrue = StudentDButil.insertRefundB();
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("refundSucess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis4 = request.getRequestDispatcher("test.jsp");
			dis4.forward(request, response);
	
	
	}
	}
}
