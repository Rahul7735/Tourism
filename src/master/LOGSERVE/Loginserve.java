package master.LOGSERVE;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import master.DAO.RegistrationDao;

/**
 * Servlet implementation class Loginserve
 */
public class Loginserve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.setContentType("text/html");
		String uname=request.getParameter("uname");
		String pass = request.getParameter("pass");
		HttpSession session=request.getSession();
		session.setAttribute("username",uname);
		RegistrationDao rdao=new RegistrationDao();
		boolean flag=rdao.checkLogin(uname, pass);
		if(uname.equals("admin")&&pass.equals("admin"))
		{
			System.out.println("ADMIN");
			response.sendRedirect("Admin_menu.html");
		}


		else if(flag==true)
		    {
		    	System.out.println("USER");
			response.sendRedirect("index.html");
		      }
		    else
		     {
		    	System.out.println("WRONG");
			response.sendRedirect("index1.html");
		     }
		
		

		

		
		
		
		
	}

		
	
	
	
	
	
}
