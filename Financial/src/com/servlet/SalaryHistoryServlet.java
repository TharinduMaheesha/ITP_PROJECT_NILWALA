package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.Refunds;
import com.util.StudentDButil;

/**
 * Servlet implementation class SalaryHistoryServlet
 */
@WebServlet("/SalaryHistoryServlet")
public class SalaryHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String status = request.getParameter("status");
		
		List<Refunds> Details6=StudentDButil.viewRefunds(status);
		request.setAttribute("Details6",Details6);
	
	
		try {
			RequestDispatcher dis = request.getRequestDispatcher("ApproveDeclineRefund.jsp");
			dis.forward(request,response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
