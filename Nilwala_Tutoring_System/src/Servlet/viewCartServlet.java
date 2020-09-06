
package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.*;
import Model.*;



@WebServlet("/viewCartServlet")
public class viewCartServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
     
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
String name = request.getParameter("namee");
String student_id = request.getParameter("studentid");
String subject_code = request.getParameter("subjectcode");
try {
List<cart> Details=StudentDButil.validate(student_id);
request.setAttribute("Details",Details);
}
catch(Exception e)
{
e.printStackTrace();
}
RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");
dis.forward(request,response);

}


}

	
	
	
