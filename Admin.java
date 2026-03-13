package kAYO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		String a = request.getParameter("name");
		String b = request.getParameter("pass"); 
		
		if(a.equals("admin")&&b.equals("admin"))
		{
			
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Login Successfully\")");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("AHome.jsp");
			rd.include(request, response);
		}
		else
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Invalid Id and Password\")");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("ALogin.jsp");
			rd.include(request, response);
		}
	}

}
