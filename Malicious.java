package kAYO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Malicious
 */
@WebServlet("/Malicious")
public class Malicious extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Malicious() {
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
		String a = request.getParameter("url");
		String b = request.getParameter("keyword");
		String c = request.getParameter("ipa");
		
		PrintWriter out = response.getWriter();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/kayo","root","root");
			PreparedStatement ps = con.prepareStatement("insert into hacker(url,keyword,ip)values('"+a+"','"+b+"','"+c+"')");
			ps.executeUpdate();
			
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"This Is Malicious Web Page\")");
			
			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request,response);
			
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}

}
