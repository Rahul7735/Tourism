<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Bankservelet" method="post">
<%

String tid=request.getParameter("tid");
String tname=request.getParameter("tname");
String p1=request.getParameter("p1");
String hname1=request.getParameter("hname1");
String p2=request.getParameter("p2");
String hname2=request.getParameter("hname2");
String p3=request.getParameter("p3");
String hname3=request.getParameter("hname3");
String price=request.getParameter("price");
String person=request.getParameter("person");
String room=request.getParameter("room");
String tprice=request.getParameter("tprice");
String stdt=request.getParameter("stdt");
String btdt=request.getParameter("btdt");
String cid=request.getParameter("cid");
String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String cphno=request.getParameter("cphno");
%>
<table>
<tr>
<td>ENTER CARD NUMBER</td>
<td><input type="text" name="card"></td>

</tr>
<tr>
<td>ENTER CVV</td>
<td><input type="text" name="cvv"></td>

</tr>
<tr>
<td> CARD VALID UPTO</td>
<td> <input type="text" name="valid_upto"></td>

</tr>
<tr><td><input type="submit" value="BOOK"></td></tr>


</table>

<input type="hidden" name="tid" value="<%=tid%>">
<input type="hidden" name="tname" value="<%=tname %>">
<input type="hidden" name="p1" value="<%=p1 %>">
<input type="hidden" name="hname1" value="<%=hname1 %>">
<input type="hidden" name="p2" value="<%=p2 %>">
<input type="hidden" name="hname2" value="<%=hname2 %>">
<input type="hidden" name="p3" value="<%=p3%>">
<input type="hidden" name="hname3" value="<%=hname3 %>">
<input type="hidden" name="price" value="<%=price %>">
<input type="hidden" name="person" value="<%=person%>">
<input type="hidden" name="room" value="<%=room %>">
<input type="hidden" name="tprice" value="<%=tprice %>">
<input type="hidden" name="stdt" value="<%=stdt %>">
<input type="hidden" name="btdt" value="<%=btdt%>">
<input type="hidden" name="cid" value="<%=cid %>">
<input type="hidden" name="cname" value="<%=cname %>">
<input type="hidden" name="cemail" value="<%=cemail %>">
<input type="hidden" name="cphno" value="<%=cphno %>">




</form>

</body>
</html>