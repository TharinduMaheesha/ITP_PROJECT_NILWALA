package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;

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
import Model.UserModel;
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
		else if(saveValue.equalsIgnoreCase("history"))
			historyView(request, response);
		else if(saveValue.equalsIgnoreCase("attendance"))
			Attendance(request, response);
		else if(saveValue.equalsIgnoreCase("blah"))
			classHome(request, response);
		else if(saveValue.equalsIgnoreCase("create")) {
			request.setAttribute("id", request.getParameter("user"));
			request.setAttribute("UserID", request.getParameter("user"));
			String uid = request.getParameter("uid");
			request.setAttribute("UserID", uid);

			RequestDispatcher dis = request.getRequestDispatcher("Teacher_create_class.jsp");
			dis.forward(request, response);
			
		}
		else if(saveValue.equalsIgnoreCase("manage")) {
			request.setAttribute("id", request.getParameter("UserID"));
			request.setAttribute("UserID", request.getParameter("user"));

			RequestDispatcher dis = request.getRequestDispatcher("Teacher_available_classes.jsp");
			dis.forward(request, response);
			
		}
		else if(saveValue.equalsIgnoreCase("historys")) {
			request.setAttribute("id", request.getParameter("UserID"));
			request.setAttribute("UserID", request.getParameter("user"));

			RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_history.jsp");
			dis.forward(request, response);
			
		}
		else if(saveValue.equalsIgnoreCase("notice")) {
			String id = request.getParameter("uid");
			request.setAttribute("UserID", id);
			System.out.println("mamma mia2" + id);

			
			RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_home.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("schedule")) {
			String id = request.getParameter("uid");
			request.setAttribute("UserID", id);
			System.out.println("mamma mia2" + id);

			
			RequestDispatcher dis = request.getRequestDispatcher("ScheduleHome.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("logout")) {
			

			
			RequestDispatcher dis = request.getRequestDispatcher("Unregistered_user_home.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("tute")) {
			

			
			RequestDispatcher dis = request.getRequestDispatcher("Teacher_tutorial_home.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("subject")) {
			

			
			RequestDispatcher dis = request.getRequestDispatcher("TeacherSubject_home.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("lesson")) {
			

			
			RequestDispatcher dis = request.getRequestDispatcher("TM_Teacherlogin.jsp");
			dis.forward(request, response);
		}
		else if(saveValue.equalsIgnoreCase("home")) {
			

			
			RequestDispatcher dis = request.getRequestDispatcher("Teacher_home.jsp");
			dis.forward(request, response);
		}
		
		
		
		
		
		


		
	}
	protected void classHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("uid");
		request.setAttribute("UserID", id);
		System.out.println("mamma mia2" + id);

		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_home.jsp");
		dis.forward(request, response);
		
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
		String id = request.getParameter("createUID");

		
		sclass = new SubjectClass(level, grade, ekey, date, start, end , subject);
		sclass.setId(id);
		System.out.println("mamma mia1" + id);
	
		request.setAttribute("UserID", id);

		
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
			System.out.println("mamma mias"+sclass.getId());

			ClassControllerUtil.createClass(sclass , inputStream , sclass.getId());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("id",sclass.getId());
		request.setAttribute("UserID", sclass.getId());

		
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
		String uid = request.getParameter("uid");
		System.out.println("blah " + uid);			
		request.setAttribute("UserID", uid);

		
		
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
		String uid = request.getParameter("uid");
		System.out.println("blah " + uid);			
		request.setAttribute("UserID", uid);
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
		request.setAttribute("id", request.getParameter("user"));
		request.setAttribute("UserID", request.getParameter("user"));
		String uid = request.getParameter("uid");
		request.setAttribute("UserID", uid);
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
		request.setAttribute("id", request.getParameter("user"));
		request.setAttribute("UserID", request.getParameter("user"));
		String uid = request.getParameter("uid");
		request.setAttribute("UserID", uid);
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

	protected void historyView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		request.setAttribute("UserID", uid);
		
		String id = request.getParameter("cid");
		System.out.println(id);
		
		try {
			SubjectClass sub = ClassControllerUtil.ViewHistoryDetails(id);
			request.setAttribute("historyDetails", sub);
			 RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_history_view.jsp");
				dis.forward(request, response);
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	protected void Attendance(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String uid = request.getParameter("uid");
		System.out.println("blah " + uid);			
		request.setAttribute("UserID", uid);
		ArrayList<UserModel> user;
		try {
			user = ClassControllerUtil.AttendanceSheet(id);
			request.setAttribute("id", user);
			RequestDispatcher dis = request.getRequestDispatcher("Teacher_class_attendance.jsp");
			dis.forward(request, response);

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
				
		
		
	}

		
	
}


