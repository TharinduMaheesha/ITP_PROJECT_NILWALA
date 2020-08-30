package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.security.auth.Subject;
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
		else if(saveValue.equalsIgnoreCase("select"))
			ViewClassDetails(request, response);
		else if(saveValue.equalsIgnoreCase("Add"))
			AddVideo(request, response);
		else if(saveValue.equalsIgnoreCase("edit"))
			EditClass(request, response);
		else if(saveValue.equalsIgnoreCase("Save Details"))
			SaveEditClass(request, response);
		


		
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
		//sclass.setVideo(request.getParameter("video_path"));
		
		 InputStream inputStream = null; // input stream of the upload file

	        String message = null;
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("video_path");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	            sclass.setVideo(filePart.getSubmittedFileName());


	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	        
		
		try {
			ClassControllerUtil.createClass(sclass , inputStream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_available_classes.jsp");
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
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_available_classes.jsp");
		dis.forward(request, response);
	}

	protected void ViewClassDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("class_id");
		
		try {
			SubjectClass s = ClassControllerUtil.ViewClassDetails(id);
			s.setId(id);
			
			request.setAttribute("classDetails", s);
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_view_class.jsp");
		dis.forward(request, response);
	}


	protected void AddVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("classID");
		String link = request.getParameter("quiz_link");
		String name = null;
		 InputStream inputStream = null; // input stream of the upload file

	        String message = null;
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("video_path");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	            name = filePart.getSubmittedFileName();

	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	        
	        try {
				ClassControllerUtil.AddVideo(link, inputStream, id , name);
				SubjectClass s = ClassControllerUtil.ViewClassDetails(id);
				s.setId(id);
				
				request.setAttribute("classDetails", s);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        RequestDispatcher dis = request.getRequestDispatcher("Teacher_view_class.jsp");
			dis.forward(request, response);
	}
	
	protected void EditClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("classID");
		try {
			SubjectClass s = ClassControllerUtil.ViewClassDetails(id);
			s.setId(id);
			request.setAttribute("classDetails", s);

		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("Teacher_edit_class.jsp");
		dis.forward(request, response);
	}
	
	protected void SaveEditClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String video = request.getParameter("video");
		String level = request.getParameter("class_level");
		String grade = request.getParameter("class_grade");
		String ekey = request.getParameter("ekey");
		String date = request.getParameter("class_date");
		String start = request.getParameter("class_time_start");
		String end = request.getParameter("class_time_end");
		String subject = request.getParameter("subject");
		String quiz = request.getParameter("quiz_link");
		String id = request.getParameter("class_id");
		System.out.println(id);
        Part filePart = request.getPart("video");
        System.out.println("size"+filePart.getSize());
		
		
		SubjectClass sub = new SubjectClass(level, grade, ekey, date, start, end, subject);
		sub.setQuiz(quiz);
		sub.setId(id);
		
		
		if(filePart.getSize() == 0) {
			
			
			try {
				ClassControllerUtil.updateWithoutVideo(sub);
				SubjectClass s = ClassControllerUtil.ViewClassDetails(id);
				s.setId(id);
				
				request.setAttribute("classDetails", s);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		else {
					 InputStream inputStream = null; // input stream of the upload file
		
		
				        String message = null;
				        // obtains the upload file part in this multipart request
				        if (filePart != null) {
				            // prints out some information for debugging
				            System.out.println(filePart.getName());
				            System.out.println(filePart.getSize());
				            System.out.println(filePart.getContentType());
				            String name = filePart.getSubmittedFileName();
				            sub.setVideo(name);
		
				            // obtains input stream of the upload file
				            inputStream = filePart.getInputStream();
				}
				
				    	try {
							ClassControllerUtil.updateWithVideo(sub , inputStream);
							SubjectClass s = ClassControllerUtil.ViewClassDetails(id);
							s.setId(id);
							
							request.setAttribute("classDetails", s);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}


        }
		 RequestDispatcher dis = request.getRequestDispatcher("Teacher_view_class.jsp");
			dis.forward(request, response);
	}


}


