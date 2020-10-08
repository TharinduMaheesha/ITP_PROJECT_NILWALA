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


@WebServlet("/payFeeServlet")
public class payFeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public payFeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fee = request.getParameter("totFee");
		String student_id= request.getParameter("uid");
		String card_no = request.getParameter("cardno");
		String exp_date = request.getParameter("exp");
		String cvv = request.getParameter("scode");
		
		
		List<cart> Details3=StudentDButil.takeid(student_id);
		request.setAttribute("Details3",Details3);
		
		boolean isTrue;
		
		isTrue = StudentDButil.insertPaymentA(student_id,card_no,exp_date,cvv);
		isTrue = StudentDButil.insertPaymentB(fee);

		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("paysucess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("adminDash.jsp");
			dis1.forward(request, response);
		}
		
		
		
	}

}
