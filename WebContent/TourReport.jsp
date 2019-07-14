<%@page import="master.DTO.tourdto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
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
        document.tourreport.action="tourexport.jsp";
        document.tourreport.method="post";
        document.tourreport.submit();
        return true;                    
        }

</SCRIPT>

</head>
<body>
<form name="tourreport">
<table border="2">
<tr>
<td>TID</td>
<td>TNAME</td>
<td>PLACE1</td>
<td>PLACE2</td>
<td>PLACE3</td>
<td>PRICE</td>
<td>STDT</td>
<td>BTDT</td>
<td>PHNO</td>
</tr>
<%
tourdao tdao=new tourdao();
       ArrayList<tourdto> result=tdao.getdata();
       Iterator<tourdto> itr=result.iterator();
       while(itr.hasNext())
       {
    	           
    	  tourdto tdto=(tourdto)itr.next();
    	    
    	  %>
    	  <tr>
    	  <td><%=tdto.getTid() %></td>
    	  <td><%=tdto.getTname() %></td>
    	  <td><%=tdto.getP1() %></td>
    	  <td><%=tdto.getP2() %></td>
    	  <td><%=tdto.getP3() %></td>
    	  <td><%=tdto.getPrice() %></td>
    	  <td><%=tdto.getStdt() %></td>
    	  <td><%=tdto.getBtdt() %></td>
    	  <td><%=tdto.getPhno() %></td>
    	  </tr>
    	   
    	
     <% 
       }




%>

</table>
<input type="button" name="Efile" value="Export to Excel" onclick="goexport()">


</form>


</body>
</html>