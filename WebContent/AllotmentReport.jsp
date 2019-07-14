<%@page import="master.DTO.aldto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="master.DAO.aldao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<tr>
<td>TID</td>
<td>HID</td>

</tr>
<%
aldao adao=new aldao();
ArrayList result=adao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
	aldto adto=(aldto)itr.next();
	
	
	%>
	<tr>
	<td><%=adto.getTid() %></td>
	<td><%=adto.getHid() %></td>
	</tr>
	
<% 


}



%>	



</table>
</body>
</html>