package master.hservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.hoteldao;
import master.DTO.hoteldto;
import master.DTO.tourdto;

/**
 * Servlet implementation class Addhotelserve
 */
public class Addhotelserve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		String hid=request.getParameter("hid");
		String hname=request.getParameter("hname");
		String tplace=request.getParameter("tplace");
		hoteldto hdto=new hoteldto();
		hdto.setHid(hid);
		hdto.setHname(hname);
		hdto.setTplace(tplace);
		hoteldao hdao=new hoteldao();
		hdao.insertdata(hdto);
		response.sendRedirect("HotelReport.jsp");
	
	}

}
