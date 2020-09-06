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

/**
 * Servlet implementation class AddSalarySev
 */
@WebServlet("/AddSalarySev")
public class AddSalarySev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String teacher_id = request.getParameter("teacherid");
		String transaction_id = request.getParameter("transactionid");
		
		String type = request.getParameter("typee");
		String description = request.getParameter("descriptionn");
		String amount = request.getParameter("amountt");

		boolean isTrue;
		
		isTrue = StudentDButil.insertsalary(teacher_id,transaction_id);
		isTrue = StudentDButil.insert(transaction_id,description,type,amount);
		
		if(isTrue == true) {
	
			
			
			RequestDispatcher dis = request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("totalFee.jsp");
			dis.forward(request, response);
		}
	}

}
