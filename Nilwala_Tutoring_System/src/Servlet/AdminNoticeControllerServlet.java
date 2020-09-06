package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.AppointmentModel;
import Util.NoticeControllerUtil;

/**
 * Servlet implementation class AdminNoticeControllerServlet
 */
@WebServlet("/AdminNoticeControllerServlet")
public class AdminNoticeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String value = request.getParameter("some");
		System.out.println(value);
		String apid = request.getParameter("apid");
		System.out.println(apid);
		
		if(value.equalsIgnoreCase("view"))
			viewRequests(request , response);
		else if(value.equalsIgnoreCase("accepted")) {
		
			try {
				NoticeControllerUtil.requestDecision(value , apid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dis = request.getRequestDispatcher("Appointments.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("declined")) {
			try {
				NoticeControllerUtil.requestDecision(value , apid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("Appointments.jsp");
			dis.forward(request, response);
		}
	}


	private void viewRequests(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			ArrayList<AppointmentModel> array = NoticeControllerUtil.AdminviewAppointments();
			request.setAttribute("Appointment", array);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("Admin_appointment_requests.jsp");
		dis.forward(request, response);
	}

}
