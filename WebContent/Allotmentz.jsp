<%@page import="master.DTO.hoteldto"%>
<%@page import="master.DAO.hoteldao"%>
<%@page import="master.DTO.tourdto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="master.DAO.tourdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ALSERVE" method="post">
<table>
<tr>
<td><label>CHOOSE TOURID</label></td>
<td>
<select name="tid">

<%
tourdao tdao=new tourdao();
ArrayList result=tdao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
     tourdto tdto=(tourdto)itr.next();
  
  %>
    <option value="<%=tdto.getTid()%>"><%=tdto.getTid()%></option>	
<%
}

%>	


</select>


</td>
<td><a href="TourReport.jsp">viewtour</a></td>

</tr>
<tr>


<td><label>CHOOSE HOTELID</label></td>
<td>
<select name="hid">
<%
  hoteldao hdao=new hoteldao();
  ArrayList result1=hdao.getdata();
  Iterator itr1=result1.iterator();
  while(itr1.hasNext())
  {
	  
	  hoteldto hdto=(hoteldto)itr1.next();
	  
	  %>
	  <option value="<%=hdto.getHid()%>"><%=hdto.getHid()%></option>
	  
	<%  
  }

%>


</select>

</td>
<td><a href="HotelReport.jsp">viewhotel</a></td>

</tr>

<tr><td><input type="submit" value="assinment"></td></tr>


</table>




</form>
</body>
</html>