package Servlet;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.UserModel;
import Util.UserController;

/**
 * Servlet implementation class UserControllerServlet
 */
@WebServlet("/UserControllerServlet")
public class UserControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserControllerServlet() {
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
		
		String value = request.getParameter("headerButton");
		
		if (value.equalsIgnoreCase("signup"))
			Signup(request, response);
		else 
			login(request, response);
		
		
	}
	
	protected void Signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String temppassword = request.getParameter("psw");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String type = request.getParameter("userType");
		String grade = request.getParameter("grade");
		 String password = null;
		try {
			password = UserController.toHexString(UserController.getSHA(temppassword));
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		System.out.println(fname);
		
		UserModel user = new UserModel(fname, lname, uname, email, phone, password, nic);
		try {
			UserController.UserSignup(user);
			String id = UserController.getUID(uname);
			if(type.equalsIgnoreCase("teacher")) {
				UserController.addTeacher(id);
				RequestDispatcher dis = request.getRequestDispatcher("Teacher_home.jsp");
				dis.forward(request, response);
			}
			else {
				UserController.addStudent(id , grade);
				RequestDispatcher dis = request.getRequestDispatcher("Student_home.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("loginuname");
		String psw = request.getParameter("loginpsw");
		System.out.println(psw);
		try {
			String password = UserController.toHexString(UserController.getSHA(psw));
			System.out.println("hex: "+password);

			boolean result = UserController.login(uname, password);
			
			if(result == true) {
				String type = UserController.findUser(uname, password);
				String uid = UserController.getUID(uname);
				request.setAttribute("UserID", uid );
				if(uid.equalsIgnoreCase("10013")) {
					RequestDispatcher dis = request.getRequestDispatcher("Admin_home.jsp");
					dis.forward(request, response);
				}
				if(type.equalsIgnoreCase("teacher")) {
					
					RequestDispatcher dis = request.getRequestDispatcher("Teacher_home.jsp");
					dis.forward(request, response);
				}
				else {
					RequestDispatcher dis = request.getRequestDispatcher("Student_home.jsp");
					dis.forward(request, response);
				}
				
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("Unregistered_user_home.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


}
