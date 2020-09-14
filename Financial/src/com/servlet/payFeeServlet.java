package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.StudentDButil;


@WebServlet("/payFeeServlet")
public class payFeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public payFeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String student_id= request.getParameter("uid");
		String fee = request.getParameter("totFee");
		String exp_date = request.getParameter("exp");
		String card_no = request.getParameter("cardno");
		String sec_code = request.getParameter("scode");
		
		boolean isTrue;
		
		isTrue = StudentDButil.insertPayment(student_id,fee,exp_date,card_no,sec_code);

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
