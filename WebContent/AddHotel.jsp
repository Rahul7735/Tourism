<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Addhotelserve" method="post">
<table>
<tr>
<td><label>ENTER YOUR HOTELID</label></td>
<td><input type="text" name="hid"></td>
</tr>

<tr>
<td><label>ENTER YOUR HOTELNAME</label></td>
<td><input type="text" name="hname"></td>
</tr>

<tr>
<td><label >ENTER THE TOURPLACE</label></td>
<td><select name="tplace">
<option value="SHIMLA">SHIMLA</option>
<option value="DARJEELING">DARJEELING</option>
<option value="MANALI">MANALI</option>
<option value="NAINITAL">NAINITAL</option>
<option value="TAJMAHAL">TAJMAHAL</option>
<option value="VICTORIA">VICTORIA</option>
<option value="QUTUBMINAR">QUTUBMINAR</option>
<option value="KERALA">KERALA</option>
<option value="GOA">GOA</option>
<option value="THE KONARKSUN TEMPLE">THE KONARKSUN TEMPLE</option>
<option value="MUSSORIE">MUSSORIE</option>
<option value="VAISHNOB DEVI">VAISHNOB DEVI</option>
<option value="RAMESHWARAM">RAMESHWARAM</option>
<option value="MUMBAI">MUMBAI</option>
<option value="ODISHA">ODISHA</option>
<option value="HAWA MAHAL">HAWA MAHAL</option>
<option value="PONDUCHERY">PONDUCHERY</option>

</select>

</td>
</tr>
<tr>


<td><input type="submit" value="ADD HOTEL"></td>
</tr>
</table>
</form>








</body>
</html>