package master.Bankserve;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.DAO.BankDao;
import master.DTO.BankDto;

/**
 * Servlet implementation class Bankservelet
 */
public class Bankservelet extends HttpServlet {
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
		String hname1=request.getParameter("hname1");
		String p2=request.getParameter("p2");
		String hname2=request.getParameter("hname2");
		String p3=request.getParameter("p3");
		String hname3=request.getParameter("hname3");
        double price=Double.parseDouble(request.getParameter("price"));
		String person=request.getParameter("person");
		String room=request.getParameter("room");
		double tprice=Double.parseDouble(request.getParameter("tprice"));
		String stdt=request.getParameter("stdt");
		String btdt=request.getParameter("btdt");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String cemail=request.getParameter("cemail");
		String cphno=request.getParameter("cphno");
		String card=request.getParameter("card");
		String cvv=request.getParameter("cvv");
		String valid_upto=request.getParameter("valid_upto");
		BankDto bdto=new BankDto();
		bdto.setTid(tid);
		bdto.setTname(tname);
		bdto.setP1(p1);
		bdto.setHname1(hname1);
		bdto.setP2(p2);
		bdto.setHname2(hname2);
		bdto.setP3(p3);
		bdto.setHname3(hname3);
		bdto.setPrice(price);
		bdto.setPerson(person);
		bdto.setRoom(room);
		bdto.setTprice(tprice);
		bdto.setStdt(stdt);
		bdto.setBtdt(btdt);
	    bdto.setCid(cid);
	    bdto.setCname(cname);
	    bdto.setCemail(cemail);
	    bdto.setCphno(cphno);
	    bdto.setCard(card);
	    bdto.setCvv(cvv);
	    bdto.setValid_upto(valid_upto);
	    BankDao bdao=new BankDao();
	    bdao.insertdata(bdto);
	    response.sendRedirect("BookingReport.jsp");
		
		
		
		
		
		
	}

}
