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
<script type="text/javascript">
var req=false;
function initialize()
{
  if(window.XMLHttpRequest)
   {
    req=new XMLHttpRequest();
    }
    else if(window.ActiveXObject)
    {
     req=new ActiveXObject("Microsoft.XMLHTTP");
     }
  
    }
function getDetails()
{
	 initialize();
	 //alert("HELLO");
    // alert("cid:"+cid);
     var tid=document.f1.tid.value;
   // alert("tid:"+tid);
   
     
     var url="TourIdDetails.jsp?tid="+tid;
     if(req!=null)
     {
         req.open("post",url,true);
         req.onreadystatechange=process1;
         req.send(null);
     }
    
     else
     {
       //document.getElementById("test").innerHTML="";  
     }
  }
  function process1()
  {
   if(req.readyState==4)
   {
     if(req.status==200)
     {
    	 var result=req.responseText;
    	//alert(result);
     	  var tname=result.substring(0, result.indexOf("#"));
     	  document.getElementById("tname").value=tname;  
     	  //alert(tname);
     	   var temp3=result.substring(result.indexOf("#")+1);
          var tplace1=temp3.substring(0, temp3.indexOf("#"));
          //alert(tplace1);
          document.getElementById("p1").value=tplace1;   
           var temp4=temp3.substring(temp3.indexOf("#")+1);
          var tplace2=temp4.substring(0, temp4.indexOf("#"));
          //alert(tplace2);
          document.getElementById("p2").value=tplace2;         
          var temp5=temp4.substring(temp4.indexOf("#")+1);
          var tplace3=temp5.substring(0, temp5.indexOf("#"));
          //alert(tplace3);
          document.getElementById("p3").value=tplace3;
          temp6=temp5.substring(temp5.indexOf("#")+1);         
          var price=temp6.substring(0, temp6.indexOf("#"));
          //alert(price);
          document.getElementById("price").value=price;         
          temp7=temp6.substring(temp6.indexOf("#")+1);
          var stdt=temp7.substring(0, temp7.indexOf("#"));
          //alert(stdt);
          document.getElementById("stdt").value=stdt;         
          temp8=temp7.substring(temp7.indexOf("#")+1);
          var endt=temp8.substring(0, temp8.indexOf("#"));
          //alert(endt);
          document.getElementById("btdt").value=endt;
         
         
         
     }
  }
     
}
  function populateHotelName1()
  {
     initialize();
    // alert("POPULATE");
     var tplace=document.getElementById('p1').value;
     var url="SelectHname1.jsp?tplace="+tplace;
     if(req!=null)
      {
          req.open("GET",url,true);
          req.onreadystatechange=process2;
          req.send(null);
      }
   }
   function process2()
   {
    if(req.readyState==4)
    {
      if(req.status==200)
      {
       var city=null;
       var objSelect=document.getElementById('hname1');
       var optlist =req.responseXML.getElementsByTagName('city');
       populateSelect(objSelect,optlist);
      }
   }
}
function populateSelect(objSelect,optlist) {
objSelect.length=0;
 	for(ic=0;ic<optlist.length;ic++) {
	var objOption = document.createElement("option");
	objOption.text = optlist[ic].firstChild.nodeValue;
	objOption.value = optlist[ic].firstChild.nodeValue;

	if(document.all && !window.opera)
	  {objSelect.add(objOption);}
	 else
	  {objSelect.add(objOption, null);};
}
}


function populateHotelName2()
{
   initialize();
  // alert("POPULATE");
   var tplace=document.getElementById('p2').value;
   var url="SelectHname2.jsp?tplace="+tplace;
   if(req!=null)
    {
        req.open("GET",url,true);
        req.onreadystatechange=process3;
        req.send(null);
    }
 }
 function process3()
 {
  if(req.readyState==4)
  {
    if(req.status==200)
    {
     var city=null;
     var objSelect=document.getElementById('hname2');
     var optlist =req.responseXML.getElementsByTagName('city');
     populateSelect(objSelect,optlist);
    }
 }
}
function populateSelect(objSelect,optlist) {
objSelect.length=0;
	for(ic=0;ic<optlist.length;ic++) {
	var objOption = document.createElement("option");
	objOption.text = optlist[ic].firstChild.nodeValue;
	objOption.value = optlist[ic].firstChild.nodeValue;

	if(document.all && !window.opera)
	  {objSelect.add(objOption);}
	 else
	  {objSelect.add(objOption, null);};
}
}


function populateHotelName3()
{
   initialize();
  // alert("POPULATE");
   var tplace=document.getElementById('p3').value;
   var url="SelectHname1.jsp?tplace="+tplace;
   if(req!=null)
    {
        req.open("GET",url,true);
        req.onreadystatechange=process4;
        req.send(null);
    }
 }
 function process4()
 {
  if(req.readyState==4)
  {
    if(req.status==200)
    {
     var city=null;
     var objSelect=document.getElementById('hname3');
     var optlist =req.responseXML.getElementsByTagName('city');
     populateSelect(objSelect,optlist);
    }
 }
}
function populateSelect(objSelect,optlist) {
objSelect.length=0;
	for(ic=0;ic<optlist.length;ic++) {
	var objOption = document.createElement("option");
	objOption.text = optlist[ic].firstChild.nodeValue;
	objOption.value = optlist[ic].firstChild.nodeValue;

	if(document.all && !window.opera)
	  {objSelect.add(objOption);}
	 else
	  {objSelect.add(objOption, null);};
}
}

function callPrice()
{
	//alert("ROOMRENT");
	var p=parseInt(document.getElementById("price").value);
	//alert(p);
	var n=parseInt(document.getElementById("np").value);
	//alert(n);
	var c=document.getElementById("room").value;
	//alert(c);
	if(c=='NONACS')
  {
		var total=p*n;
		alert(total);
	document.getElementById("tprice").value=p*n;
  }
	else if(c=='NONACD')
	{
		document.getElementById("tprice").value=p*n+0.10*p;
	}
	else if(c=='ACS')
	{
		document.getElementById("tprice").value=p*n+0.15*p;
	}
	else
	{
		document.getElementById("tprice").value=p*n+0.20*p;
	}
}




  </script>
</head>
<body>
<form  name="f1" action="BankDetails.jsp" method="post">
<%
String username=session.getAttribute("username").toString();//to convert object into string we use {.toString()}
%>
<table>
<tr>
<td>TID</td>

<td>
<select name="tid" id="tid" onchange="getDetails()">
<option value="">SELECT TID</option>
<%
tourdao tdao=new tourdao();
ArrayList result=tdao.getdata();
Iterator itr=result.iterator();
while(itr.hasNext())
{
	 
	tourdto tdto=(tourdto)itr.next();
	%>
	<option value="<%=tdto.getTid()%>"><%=tdto.getTid() %></option>
	
	<%
	
	
}
	
	%>
	
	
	


</select>



</td>

<td><label>TNAME</label></td>
<td ><input type="text" name="tname" id="tname"></td>



</tr>
<tr>



<td><label>TPLACE1</label></td>
<td><input type="text" name="p1" id="p1"></td>
<td><input type="button" value="seehotel" name="bt1" onclick="populateHotelName1()"></td>
<td>HOTEL NAME</td>
<td>
<select name="hname1" id="hname1" >

<option value="">SELECT HOTEL NAME</option>	 


</select>
</td>
</tr>
<tr>
<td><label>TPLACE2</label></td>
<td><input type="text" name="p2" id="p2"></td>
<td><input type="button" value="seehotel" name="bt2" onclick="populateHotelName2()"></td>
<td>HOTEL NAME</td>
<td>
<select name="hname2" id="hname2" >
<option value="">SELECT HOTEL NAME</option>	 
</select>
</td>
</tr>
<tr>
<td><label>TPLACE3</label></td>
<td><input type="text" name="p3" id="p3"></td>
<td><input type="button" value="seehotel" name="bt3" onclick="populateHotelName3()"></td>
<td>HOTEL NAME</td>
<td><select name="hname3" id="hname3" >
<option value="">SELECT HOTEL NAME</option>	 
</select>


</td>
</tr>
<tr>
<td>TPRICE</td>
<td><input type="text" name="price" id="price"></td>
<td>NO OF PERSON</td>
<td><input type="text" name="person" id="np" ></td>



</tr>
<tr>
<td>ROOM TYPE</td>
<td>
<select name="room" id="room" onchange="callPrice()">
<option value="NONACS">NONACSINGLEBED</option>
<option value="NONACD">NONACDOUBLEBED</option>
<option value="ACS">ACSINGLEBED</option>
<option value="ACD">ACDOUBLEBED</option>

</select>



</td>
<td>TOTAL PRICE</td>
<td><input type="text" name="tprice" id="tprice"></td>

</tr>

<tr>

<td>StartDate</td>
<td><input type="text" name="stdt" id="stdt"></td>
<td>EndDate</td>
<td ><input type="text" name="btdt" id="btdt"></td>
</tr>

<tr>

<td>CUSTOMER ID</td>
<td><input type="text" name="cid" id="cid" value="<%=username %>"></td>
<td>CUSTOMER NAME</td>
<td><input type="text" name="cname" id="cname"></td>
</tr>

<tr>

<td>CUSTOMER EMAIL</td>
<td><input type="text" name="cemail" id="cemail"></td>
<td>CUSTOMER PHONE</td>
<td><input type="text" name="cphone" id="cphone"></td>
</tr>


<tr>
<td><input type="submit" value="CONTINUE"></td>

</tr>



</table>



</form>
</body>
</html>