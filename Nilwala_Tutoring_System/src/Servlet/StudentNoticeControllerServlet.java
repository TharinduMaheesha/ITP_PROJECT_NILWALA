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
import Model.NoticeModel;
import Model.SubjectClass;
import Util.ClassControllerUtil;
import Util.NoticeControllerUtil;

/**
 * Servlet implementation class StudentNoticeControllerServlet
 */
@WebServlet("/StudentNoticeControllerServlet")
public class StudentNoticeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentNoticeControllerServlet() {
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
		String value = request.getParameter("appointment");
		
		if(value.equalsIgnoreCase("notices"))
			viewNotices(request , response);
		else if(value.equalsIgnoreCase("newAppointment")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			
			RequestDispatcher dis = request.getRequestDispatcher("Student_create_appointment.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("sendRequest"))
			newAppointment(request , response);
		else if(value.equalsIgnoreCase("myAppointments"))
			myAppointments(request , response);
		else if(value.equalsIgnoreCase("cancel"))
			cancelAppointment(request , response);
	}

	private void cancelAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("UserID", request.getParameter("uid"));
		System.out.println("stu " +request.getParameter("uid") );
		String apid = request.getParameter("apid");
		
		try {
			NoticeControllerUtil.cancelAppoitment(apid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("Student_notice_home.jsp");
		dis.forward(request, response);
	}

	private void myAppointments(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("UserID", request.getParameter("uid"));
		System.out.println("stu " +request.getParameter("uid") );
		
		try {
			ArrayList<AppointmentModel> array = NoticeControllerUtil.viewAppointments(request.getParameter("uid"));
			request.setAttribute("Appointment", array);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Student_view_appointments.jsp");
		dis.forward(request, response);
		
	}

	private void newAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("UserID", request.getParameter("uid"));
		System.out.println("stu " +request.getParameter("uid") );	
		
		String teacher = request.getParameter("teacher");
		String subject = request.getParameter("subject");
		String grade = request.getParameter("grade");
		String date = request.getParameter("date");
		String reason = request.getParameter("reason");
		
		AppointmentModel app = new AppointmentModel();
		app.setDate(date);
		app.setTeacherID(teacher);
		app.setSubjectCode(subject);
		app.setDescription(reason);
		app.setGrade(grade);
		app.setStudentID(request.getParameter("uid"));
		
		try {
			NoticeControllerUtil.addAppointment(app);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("Student_notice_home.jsp");
		dis.forward(request, response);
	}

	private void viewNotices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("UserID", request.getParameter("uid"));
		System.out.println("stu " +request.getParameter("uid") );
		
		try {
			ArrayList<SubjectClass> array = ClassControllerUtil.getStudentSubjects(request.getParameter("uid"));
			request.setAttribute("subjects", array);
			RequestDispatcher dis = request.getRequestDispatcher("Student_notice_view.jsp");
			dis.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
