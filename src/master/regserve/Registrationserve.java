package master.regserve;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.RegistrationDao;
import master.DTO.RegistrationDto;

/**
 * Servlet implementation class Registrationserve
 */
public class Registrationserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrationserve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String phno=request.getParameter("phno");
		String email=request.getParameter("email");
		RegistrationDto rdto=new RegistrationDto();
		rdto.setName(name);
		rdto.setUname(uname);
		rdto.setPass(pass);
		rdto.setPhno(phno);
		rdto.setEmail(email);
		RegistrationDao rdao=new RegistrationDao();
		rdao.inserdata(rdto);
		response.sendRedirect("Rreport.jsp");
		
		
		
		
		
	}

}
