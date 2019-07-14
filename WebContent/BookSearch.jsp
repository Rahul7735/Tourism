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
<script type="text/javascript">
 function getBIDDetails()
 {
	 alert("hello");
	// var tplace=document.getElementById("tplace").value;
	var bid=document.booksearch.bid.value;
	 alert(bid);
	
 document.booksearch.action="BookSearch.jsp?bid="+bid;
	 document.booksearch.method="post";
	 document.booksearch.submit();
	 
 }



</script>

</head>
<body>
<form name="booksearch">
<table>
<tr>
<td>BID</td>








<td>
<select name="bid" id="bid" onchange="getBIDDetails()">
<option value="">SELECT BID</option>

<%

BankDao bdao=new BankDao();
ArrayList result=bdao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
	BankDto bdto=(BankDto)itr.next();
	%>
	
	<option value="<%=bdto.getBid()%>"><%=bdto.getBid() %></option>
		

	

	<% 
	
	
}
	
	%>
	</select>
	</td>
	</tr>
</table>
 

<%

if(request.getParameter("bid")!=null )
{
  int bid=Integer.parseInt(request.getParameter("bid"));
  BankDao bdao1=new BankDao();
  ArrayList list=bdao1.getBidDetails(bid);
  Iterator itr1=list.iterator();


%>
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
while(itr1.hasNext())
{
	
	BankDto bdto=(BankDto)itr1.next();
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
}
%>
	
</table>
	
	

       
 
</form>
</body>
</html>