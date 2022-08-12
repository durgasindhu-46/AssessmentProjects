<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|Admin Home</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:20px;"> <--Back to home</a>
<hr><hr>
<div align="center">
<h1>Insert New Flight Details</h1>
<div style="border:3px solid black;width:30%;height:50%;background-color:azure;border-radius:15px;padding:20px" 
align="center">
<form action=InsertFlight method=post>
<label for=name>Flight Name: </label> <input type="text" name=name placeholder=FlightName id=name
/><br><br>
<label for=from>From: </label> <input type="text" name=from placeholder=source id=from
/><br><br>
<label for=to>To: </label> <input type="text" name=to placeholder=destination id=to /><br><br>
<label for=departure>Date: </label> <input type="date" name=departure placeholder=date id=departure /><br><br>
<label for=time>Time: </label> <input type="time" name=time placeholder=time id=time
/><br><br>
<label for=price>Price: </label> <input type="text" name=price placeholder=price id=price
/><br><br>
<input type=submit value=Submit style="border-color:black"/> 
<input type=reset style="border-color:black"/>
</form>
</div>

<%
String message=(String)session.getAttribute("message");
if(message!=null){
%>
<p style="color:red;"><%=message %></p>
<%
session.setAttribute("message", null);
}
%>
</div>
</body>
</html>