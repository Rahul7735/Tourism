<%@page import="master.ADTO.adto"%>
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
<SCRIPT type="text/javascript"> 
     function goexport()
        {
        document.areport.action="aexport.jsp";
        document.areport.method="post";
        document.areport.submit();
        return true;                    
        }

</SCRIPT>

</head>
<body>

<form name="areport">
<table border="2">

<tr>
<td>TID</td>
<td>TNAME</td>
<td>P1</td>
<td>P2</td>
<td>P3</td>
<td>HID</td>
<td>HNAME</td>
<td>TPLACE</td>


</tr>

<%
tourdao tdao=new tourdao();
ArrayList result=tdao.getadata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	
	 adto dto=(adto)itr.next();
	%>
	<tr>
	
	<td><%=dto.getTid() %></td>
	<td><%=dto.getTname()%></td>
	<td><%=dto.getP1() %></td>
	<td><%=dto.getP2() %></td>
	<td><%=dto.getP3() %></td>
	<td><%=dto.getHid() %></td>
	<td><%=dto.getHname() %></td>
	<td><%=dto.getTplace() %></td>
	
	
	</tr>
	
	<%
	


}


%>



</table>
<input type="button" name="Efile" value="Export to Excel" onclick="goexport()">

</form>






</body>
</html>