package master.UPD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.tourdao;
import master.DTO.tourdto;

/**
 * Servlet implementation class Updateserv
 */
public class Updateserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		double price=Double.parseDouble(request.getParameter("price"));
		String stdt=request.getParameter("stdt");
		String btdt=request.getParameter("btdt");
		tourdto tdto=new tourdto();
		tdto.setTid(tid);
		tdto.setPrice(price);
	    tdto.setStdt(stdt);
		tdto.setBtdt(btdt);
		tourdao tdao=new tourdao();
		tdao.updateData(tdto);
		response.sendRedirect("TourReport.jsp");
				
		
		
		
	}

}
