package master.ASERVE;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.aldao;
import master.DTO.aldto;

/**
 * Servlet implementation class ALSERVE
 */
public class ALSERVE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  response.setContentType("text/html");
	  String tid=request.getParameter("tid");
	  String hid=request.getParameter("hid");
	  System.out.println(hid);
	    aldto adto=new aldto();
	    adto.setTid(tid);
	    adto.setHid(hid);
	    aldao adao=new aldao();
	    adao.inserdata(adto);
	    response.sendRedirect("AllotmentReport.jsp");
	   
	    
		
		
		
	}

}
