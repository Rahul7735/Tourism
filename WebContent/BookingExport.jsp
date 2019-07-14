<%@page import="master.DTO.BankDto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="master.DAO.BankDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
    response.setContentType("application/vnd.ms-excel");
    response.setHeader("Content-disposition","attachment;filename=HotelReport.xls");
    %>


<body>
<form name="bookingreport">
<table border="2">
<tr>
<td>BID</td>
<td>TID</td>
<td>TNAME</td>
<td>TPLACE1</td>
<td>HNAME1</td>
<td>TPLACE2</td>
<td>HANME2</td>
<td>TPLACE3</td>
<td>HANME3</td>
<td>PRICE</td>
<td>PERSON</td>
<td>ROOMTYPE</td>
<td>TOTAL PRICE</td>
<td>STDT</td>
<td>BTDT</td>
<td>CID</td>
<td>CNAME</td>
<td>CEMAIL</td>
<td>CPHONENO</td>
<td>CARDNO</td>
<td>CVV</td>
<td>VALID_UPTO</td>







</tr>

<%

BankDao bdao=new BankDao();
ArrayList result=bdao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
	BankDto bdto=(BankDto)itr.next();
	%>
	
	<tr>
	<td><%=bdto.getBid() %></td>
	<td><%=bdto.getTid() %></td>
	<td><%=bdto.getTname() %></td>
	<td><%=bdto.getP1()%></td>
	<td><%=bdto.getHname1() %></td>
	<td><%=bdto.getP2()%></td>
	<td><%=bdto.getHname2() %></td>
	<td><%=bdto.getP3() %></td>
	<td><%=bdto.getHname3() %></td>
	<td><%=bdto.getPrice() %></td>
	<td><%=bdto.getPerson() %></td>
	<td><%=bdto.getRoom() %></td>
	<td><%=bdto.getTprice() %></td>
	<td><%=bdto.getStdt() %></td>
	<td><%=bdto.getBtdt() %></td>
	<td><%=bdto.getCid() %></td>
	<td><%=bdto.getCname() %></td>
	<td><%=bdto.getCemail() %></td>
	<td><%=bdto.getCphno() %></td>
	<td><%=bdto.getCard() %></td>
	<td><%=bdto.getCvv()%></td>
  <td><%=bdto.getValid_upto()%></td>
	</tr>
		

	

	<% 
	
	
}
	
	%>
	
	

</table>
<input type="button" name="Efile" value="Export to Excel" onclick="goexport()">

</form>

	
	

</body>
</html>