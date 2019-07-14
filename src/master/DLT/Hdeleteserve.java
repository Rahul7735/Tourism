package master.DLT;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.hoteldao;
import master.DAO.tourdao;
import master.DTO.hoteldto;
import master.DTO.tourdto;

/**
 * Servlet implementation class Hdeleteserve
 */
public class Hdeleteserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hdeleteserve() {
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
		hoteldto hdto=new hoteldto();
		hdto.setHid(hid);
		hoteldao hdao=new hoteldao();
		hdao.deleteData(hdto);
		response.sendRedirect("HotelReport.jsp");
		
		
		
		
	}

}
