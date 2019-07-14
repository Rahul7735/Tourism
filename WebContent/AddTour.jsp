<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Addtourserve" method="post">
<table>
<tr>
<td><label>ENTER YOUR TOURID</label></td>
<td><input type="text" name="tid"></td>
</tr>

<tr>
<td><label>ENTER TOUR NAME</label></td>
<td><input type="text" name="tname"></td>
</tr>

<tr>
<td><label >ENTER THE PLACE1</label></td>
<td><select name=p1>
<option value="SHIMLA">SHIMLA</option>
<option value="TAJMAHAL">TAJMAHA</option>
<option value="THE KONARK TEMPLE">THE KONARK TEMPLE</option>
<option value="KERALA">KERALA</option>
<option value="DARJEELING">DARJEELINGK</option>

</select>

</td>
</tr>

<tr>
<td><label>ENTER THE PLACE2</label></td>
<td><select name=p2>
<option value="NAINITAL">NAINITAL</option>  
<option value="VICTORIA">VICTORIA</option>
<option value="HAWAMAHAL">HAWAMAHAL</option>
<option value="VAISHNODEVI">VAISHNODEVI</option>
<option value="GOA">GOA</option>

</select>

</td>
</tr>
<tr>
<td><label>ENTER THE PLACE3</label></td>
<td><select name=p3>
<option value="MUSSORIE">MUSSORIE</option>
<option value="MANALI">MANALI</option>
<option value="QUTUBMINAR">QUTUBMINAR</option>
<option value="RAMESHWARAM">RAMESHWARAM</option>
<option value="PONDUCHERY">PONDUCHERY</option>

</select>

</td>
</tr>
<tr>
<td><label>ENTER THE PRICE</label></td>
<td><input type="text" name="price"></td>

</tr>
<tr>
<td><label>ENTER THE ST.DATE</label></td>
<td><input type="text" name="stdt"></td>

</tr>
<tr>
<td><label>ENTER THE BT.DATE</label></td>
<td><input type="text" name="btdt"></td>

</tr>
<tr>
<td><label>ENTER THE PHONE NUMBER</label></td>
<td><input type="text" name="phno"></td>

</tr>
<tr>
<td><input type="submit" value="save"></td>
</tr>
</table>



</form>
</body>
</html>