package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SubjectClass;
import Util.ClassControllerUtil;
import Util.DBConnect;

/**
 * Servlet implementation class StudentClassControllerServlet
 */
@WebServlet("/StudentClassControllerServlet")
public class StudentClassControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentClassControllerServlet() {
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
		String value = request.getParameter("StudentClass");
		String value2 = request.getParameter("login");
		
		if(value.equalsIgnoreCase("enroll"))
			enrollClass(request, response);
		else if(value.equalsIgnoreCase("modalenroll"))
			modalEnroll(request, response);
		else if(value.equalsIgnoreCase("View Enrolled Classes"))
			ViewEnrolledCLasses(request, response);
		else if(value.equalsIgnoreCase("Enter"))
			ViewClass(request, response);
		else if(value.equalsIgnoreCase("class")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("Student_class_home.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("available")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("Student_available_classes.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("appointment")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("Student_notice_home.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("schedule")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("StudentScheduleVeiw.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("tute")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("Student_tutorial_home.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("subject")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("StudentSubject_home.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("lesson")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("TM_StudentViewSubject.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("cart")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("viewCart.jsp");
			dis.forward(request, response);
		}
		else if(value.equalsIgnoreCase("home")) {
			request.setAttribute("UserID", request.getParameter("uid"));
			System.out.println("stu " +request.getParameter("uid") );
			RequestDispatcher dis = request.getRequestDispatcher("Student_home.jsp");
			dis.forward(request, response);
		}
		
	
	}

	protected void enrollClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("UserID", request.getParameter("uid"));

		String id = request.getParameter("class_id");
		System.out.println(id);
		request.setAttribute("id", id);
		
		RequestDispatcher dis = request.getRequestDispatcher("modal.jsp");
		dis.forward(request, response);
	}
	
	protected void modalEnroll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("UserID", request.getParameter("uid"));

		String id = request.getParameter("modalid");
		String ekey = request.getParameter("enroll_key");
		
		System.out.println("modal : " + id);
		try {
			String key = ClassControllerUtil.validateClass(id);
			System.out.println("key : " + key);
			if(key.equalsIgnoreCase(ekey)) {
				ClassControllerUtil.studentEnroll("10010", id);
				SubjectClass sub = ClassControllerUtil.Student_Class(id);
				request.setAttribute("StudentClassDetails", sub);

				RequestDispatcher dis = request.getRequestDispatcher("Student_class_view.jsp");
				dis.forward(request, response);
			}
			else{

				response.sendRedirect("Invalid_class.jsp");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void ViewEnrolledCLasses(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("UserID", request.getParameter("uid"));

		System.out.println("got it");
		RequestDispatcher dis = request.getRequestDispatcher("Student_enrolled_classes.jsp");
		dis.forward(request, response);
	}

	protected void ViewClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("class_id");
		System.out.println("final :"+id);
		request.setAttribute("UserID", request.getParameter("uid"));

		
		SubjectClass sub;
		try {
			sub = ClassControllerUtil.Student_Class(id);
			request.setAttribute("StudentClassDetails", sub);

		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Student_class_view.jsp");
		dis.forward(request, response);
	
	}

	
}
