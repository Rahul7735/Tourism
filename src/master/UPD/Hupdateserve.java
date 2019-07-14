package master.UPD;
import java.util.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.hoteldao;
import master.DTO.hoteldto;

/**
 * Servlet implementation class Hupdateserve
 */
public class Hupdateserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hupdateserve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		String hid=request.getParameter("hid");
		String hname=request.getParameter("hname");
	   hoteldto hdto=new hoteldto();
		hdto.setHid(hid);
		hdto.setHname(hname);
		hoteldao hdao=new hoteldao();
		hdao.updateData(hdto);
		response.sendRedirect("HotelReport.jsp");
	
		
		
		
		
	}

}
