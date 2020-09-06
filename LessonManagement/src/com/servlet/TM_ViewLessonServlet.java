package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lesson.TM_LMaterial;
import com.util.TM_LessonDButil;

/**
 * Servlet implementation class TM_ViewLessonServlet
 */
@WebServlet("/TM_ViewLessonServlet")
public class TM_ViewLessonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TM_ViewLessonServlet() {
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
		
		String value = request.getParameter("ViewClass");
		
		if(value.equalsIgnoreCase("view"))
			ViewLesson(request, response);
	}

	protected void ViewLesson(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tid = request.getParameter("tid");
		String subject = request.getParameter("scode");
		String lessonNo = request.getParameter("lessonNo");
		
		try {
			TM_LMaterial lesson = TM_LessonDButil.ViewLessonMaterials(tid, subject, lessonNo);
			request.setAttribute("lessonDetails", lesson);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("TM_AddSuccess.jsp");
		dis.forward(request, response);
	}

}
