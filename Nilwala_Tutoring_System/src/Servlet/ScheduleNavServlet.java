package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScheduleNavServlet
 */
@WebServlet("/ScheduleNavServlet")
public class ScheduleNavServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleNavServlet() {
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
		String value = request.getParameter("schedule");
		request.setAttribute("UserID", request.getParameter("uid"));
		System.out.println("stu " +request.getParameter("uid") );
		
		if(value.equalsIgnoreCase("create")) {
			
			RequestDispatcher dis = request.getRequestDispatcher("scheduleInsert.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("get")) {
			
			RequestDispatcher dis = request.getRequestDispatcher("TeacherScheduleView.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("change")) {
			
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("view")) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewAllSessionDetails.jsp");
			dis.forward(request, response);
		}
	}

}
