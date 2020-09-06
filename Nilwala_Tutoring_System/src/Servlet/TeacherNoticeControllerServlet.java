package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.NoticeModel;
import Util.NoticeControllerUtil;

/**
 * Servlet implementation class TeacherNoticeControllerServlet
 */
@WebServlet("/TeacherNoticeControllerServlet")
public class TeacherNoticeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherNoticeControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String value = request.getParameter("notice");
		
		 if(value.equalsIgnoreCase("create"))
			createNotice(request, response);
		 else if(value.equalsIgnoreCase("delete"))
				deleteNotice(request, response);
		 else if(value.equalsIgnoreCase("editnotice"))
				editNotice(request, response);
		 else if(value.equalsIgnoreCase("edit"))
				SaveeditNotice(request, response);
		 
		 else if(value.equalsIgnoreCase("addNotice")) {
			
			String id = request.getParameter("uid");
			request.setAttribute("UserID", id);
			System.out.println("mamma mia2" + id);

			
			RequestDispatcher dis = request.getRequestDispatcher("Create_Notice.jsp");
			dis.forward(request, response);
		}
		
		else if(value.equalsIgnoreCase("myNotices")) {
			
			String id = request.getParameter("uid");
			request.setAttribute("UserID", id);
			System.out.println("mamma mia2" + id);

			
			RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_view.jsp");
			dis.forward(request, response);
		}
		
	}
	
	private void SaveeditNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("uid");
		request.setAttribute("UserID", id);
		System.out.println("mamma mia2" + id);
		
		String description = request.getParameter("Description");
		String grade = request.getParameter("Grade");
		String subject = request.getParameter("Subject");
		String nid = request.getParameter("noticeID");

		NoticeModel notice = new NoticeModel();
		notice.setGrade(grade);
		notice.setDescription(description);
		notice.setSubject(subject);
		notice.setNid(nid);
		
		try {
			NoticeControllerUtil.editNotices(notice);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_view.jsp");
		dis.forward(request, response);
	}

	private void editNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		request.setAttribute("UserID", id);
		System.out.println("mamma mia2" + id);
		
		String nid = request.getParameter("noticeID");
		String grade = request.getParameter("Grade");
		String subject = request.getParameter("subjectname");
		String description = request.getParameter("description");
		
		NoticeModel some = new NoticeModel();
		
		some.setDescription(description);
		some.setGrade(grade);
		some.setSubject(subject);
		some.setNid(nid);
		
		request.setAttribute("noticeDetails", some);

		RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_edit.jsp");
		dis.forward(request, response);
		
	}

	private void deleteNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nid = request.getParameter("nid");
		String id = request.getParameter("uid");
		request.setAttribute("UserID", id);
		System.out.println("mamma mia2" + id);
		
		try {
			NoticeControllerUtil.deleteNotices(nid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_view.jsp");
		dis.forward(request, response);
	}

	protected void createNotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("uid");
		request.setAttribute("UserID", id);
		System.out.println("mamma mia2" + id);
		
		String description = request.getParameter("Description");
		String grade = request.getParameter("Grade");
		String subject = request.getParameter("Subject");

		NoticeModel notice = new NoticeModel();
		notice.setGrade(grade);
		notice.setDescription(description);
		notice.setSubject(subject);
		notice.setTid(id);
		
		try {
			NoticeControllerUtil.createNotice(notice);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Teacher_notice_home.jsp");
		dis.forward(request, response);
	}


}
