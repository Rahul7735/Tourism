<%@page import="master.DTO.RegistrationDto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="master.DAO.RegistrationDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>

<tr>
<td>NAME</td>
<td>UNAME</td>
<td>PASSWORD</td>
<td>PHONENO</td>
<td>EMAIL-ID</td>

</tr>
<%
RegistrationDao rdao=new RegistrationDao();
ArrayList result=rdao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	  RegistrationDto rdto=(RegistrationDto)itr.next();
	%>
	
	<tr>
	
	<td><%=rdto.getName() %></td>
	<td><%=rdto.getUname() %></td>
	<td><%=rdto.getPass() %></td>
	<td><%=rdto.getPhno() %></td>
    <td><%=rdto.getEmail() %></td>	
	</tr>
	
	<% 
	
}
	
	%>
	

</table>


</body>
</html>