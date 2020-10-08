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

@WebServlet("/payOkToRefundServlet")
public class payOkToRefundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String student_id= request.getParameter("uid");
		
		
		List<cart> Details4=StudentDButil.takeid(student_id);
		request.setAttribute("Details4",Details4);
		
		try {
			RequestDispatcher dis = request.getRequestDispatcher("refundRqst.jsp");
			dis.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
