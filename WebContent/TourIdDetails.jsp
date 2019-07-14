

<%@page import="master.DAO.TourDao1"%>
<%@page import="master.DTO.tourdto"%>
<%@page import="master.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.AbstractCollection" %>

<%
 String tid=request.getParameter("tid");
TourDao1 tdao=new TourDao1();
ArrayList result=tdao.getTIDdetails(tid);
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
	tourdto tdto=(tourdto)itr.next();
	out.println(tdto.getTname()+"#");
	System.out.println(tdto.getTname());
	out.println(tdto.getP1()+"#");
	out.println(tdto.getP2()+"#");
	out.println(tdto.getP3()+"#");
	out.println(tdto.getPrice()+"#");
	out.println(tdto.getStdt()+"#");
	out.println(tdto.getBtdt() +"#");
	
	
	
}
%>