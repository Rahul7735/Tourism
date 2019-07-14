package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.tourdao;
import master.DTO.tourdto;

/**
 * Servlet implementation class Addtourserve
 */
public class Addtourserve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid=request.getParameter("tid");
		String tname=request.getParameter("tname");
		String p1=request.getParameter("p1");
		String p2=request.getParameter("p2");
		String p3=request.getParameter("p3");
		double price=Double.parseDouble(request.getParameter("price"));
		String stdt=request.getParameter("stdt");
		String btdt=request.getParameter("btdt");
		String phno=request.getParameter("phno");
		tourdto tdto=new tourdto();
		tdto.setTid(tid);
		tdto.setTname(tname);
		tdto.setP1(p1);
		tdto.setP2(p2);
		tdto.setP3(p3);
		tdto.setPrice(price);
		tdto.setStdt(stdt);
		tdto.setBtdt(btdt);
		tdto.setPhno(phno);
		tourdao tdao=new tourdao();
	  tdao.insertdata(tdto);
	  response.sendRedirect("TourReport.jsp");
		
		
		
	}

}
