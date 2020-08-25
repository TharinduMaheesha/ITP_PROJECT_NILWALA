package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.SubjectClass;
import Util.ClassControllerUtil;

/**
 * Servlet implementation class TeacherClassControllerServlet
 */
@WebServlet("/TeacherClassControllerServlet")
@MultipartConfig(maxFileSize = 160177215) // upload file's size up to 16MB

public class TeacherClassControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	private SubjectClass sclass ;
    public TeacherClassControllerServlet() {
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
		
		
		String saveValue = request.getParameter("saveClass");
		if(saveValue.equalsIgnoreCase("next"))
			CreateClass(request, response);
		else if(saveValue.equalsIgnoreCase("Save"))
			manageClass(request, response);
		else if(saveValue.equalsIgnoreCase("Add Later"))
			createTempClass(request, response);


		
	}
	
	protected void CreateClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String level = request.getParameter("class_level");
		String grade = request.getParameter("class_grade");
		String ekey = request.getParameter("ekey");
		String date = request.getParameter("class_date");
		String start = request.getParameter("class_time_start");
		String end = request.getParameter("class_time_end");
		String subject = request.getParameter("subject");

		
		sclass = new SubjectClass(level, grade, ekey, date, start, end , subject);
	

		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_manage_class.jsp");
		dis.forward(request, response);
	}
	
	protected void manageClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	//	sclass.setVideo(request.getParameter("video_path"));
		sclass.setQuiz(request.getParameter("quiz_link"));
		
		 InputStream inputStream = null; // input stream of the upload file

	        String message = null;
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("video_path");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());

	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	        
		
		try {
			ClassControllerUtil.createClass(sclass , inputStream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_home.jsp");
		dis.forward(request, response);
	}
	
	protected void createTempClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
	        
		
		try {
			ClassControllerUtil.createClassTemp(sclass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_home.jsp");
		dis.forward(request, response);
	}



}


