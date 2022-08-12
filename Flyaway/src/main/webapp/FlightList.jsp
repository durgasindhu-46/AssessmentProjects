<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|Flight List</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>

<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:20px;"> <--Back to home</a>
<br><br/>
<hr><hr>
<%
@SuppressWarnings("unchecked")
List<String[]> flights=(List<String[]>)session.getAttribute("flights");
if(flights!=null){
%>
<div align="center">
<h1>Available Flights</h1>
<div style="border:3px solid black;width:20%;height:20%;background-color:azure;border-radius:15px;padding:20px" 
align="center">
<p style="font-size:20px">The list of flights available</p>
<table border="2">
<tr>
<th>Name</th>
<th>Time</th>
<th>Price</th>
</tr>
<%
for(String[] flight:flights){
%>
<tr>
<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
</tr>
</table>
<br><br/>
<form>
<button type=submit style="background-color:blue;border-color: back; color:white;border-radius:10px;font-size:15 px;cursor:pointer;padding:5px" formaction="payment.jsp">Book Now</button>
</form>
</div>
</div>
<%
}
%>
<%
}
else{
%>
<div align="center">
<h2 style="color:red">There are no available flights</h2>
</div>
<%
}
%>
</body>
</html>