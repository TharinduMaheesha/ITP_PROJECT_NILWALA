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
 * Servlet implementation class EnterPayDeSev
 */
@WebServlet("/EnterPayDeSev")
public class EnterPayDeSev extends HttpServlet {
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
			
			String userID = request.getParameter("uid");
			String cardNO = request.getParameter("cardno");
			String expDate = request.getParameter("exp");
			String cw = request.getParameter("scode");
		
		

			boolean isTrue;
			
			isTrue = StudentDButil.insertCard(userID,cardNO,cw,expDate);
		
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("paysuccess.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("totalFee.jsp");
				dis.forward(request, response);
			}
		}

	}
