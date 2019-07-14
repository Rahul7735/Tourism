<%@page import="master.DTO.hoteldto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="master.DAO.hoteldao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
    response.setContentType("application/vnd.ms-excel");
    response.setHeader("Content-disposition","attachment;filename=HotelReport.xls");
    %>


</head>
<body>
<form name="hotelreport">
  <table border="2">
<tr>
<td>HID</td>
<td>HNAME</td>
<td>TPLACE</td>

</tr>
<%
  hoteldao hdao=new hoteldao();

       ArrayList result=hdao.getdata();
       Iterator itr=result.iterator();
       
       while(itr.hasNext())
       {
    	           
    	  hoteldto hdto=(hoteldto)itr.next();
    	   
    	  %>
    	  <tr>
    	  <td><%=hdto.getHid() %></td>
    	  <td><%=hdto.getHname() %></td>
    	  <td><%=hdto.getTplace() %></td>
    	  </tr>
    	   
    	
     <% 
       }




%>

</table>
</form>


  
</body>
</html>