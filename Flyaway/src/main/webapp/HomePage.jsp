<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|Home Page</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<div align="right">
<button type=submit style="background-color:lightblue;color:black;border-radius:5px;border-color: back;font-size:16px"><a href="AdminPage.jsp">Admin Login</a></button>
</div>
<hr><hr>
<%
@SuppressWarnings("unchecked")
HashMap<String,String> 
user=(HashMap<String,String>)session.getAttribute("user");
if(user!=null){
%>
<p style="font-size:30px">Welcome to FlyAway <%=user.get("name") %>!</p>
<br>
<p style="font-size:20px">To logout click here -->
<a href="Logout" style="text-decoration:none">User Logout</a>
</p>

<%
}else{
%>
<p style="font-size:20px">To login click here -->
<a href=UserPage.jsp style="text-decoration:none">User Login</a>
</p>
<%
}
%>
<br><br>
<div align="center">
<div style="border:3px solid black;width:20%;height:20%;background-color:azure;border-radius:15px;padding:20px" 
align="center">
<p style="color:blue">Check if flight available or not</p>
<form action=FlightList method=post>
<table >
 <tr>
<td><label for=from >From: </label> 
<td><input type=text name=from placeholder=source id=from/></td>
</tr>
 <tr>
<td><label for=to>To : </label> 
<td><input type=text name=to placeholder=destination id=to/></td>
</tr>
 <tr>
<td><label for=departure >Date: </label> 
<td><input type=date name=departure placeholder=date id=departure/></td>
</tr>
 <tr>
<td><label for=travellers>Travellers: </label> 
<td><input type=number name=travellers placeholder=travellersnumber id=travellers/></td>
</tr>
 </table>
 <br><br/>
<input type=submit style="background-color:Lightgreen;color=black;border-radius:5px;border-color: back;" value=Search />
<input type=reset style="background-color:lightblue;color=black; border-radius:5px;border-color: back;" />

</form>
</div>
</div>
</body>
</html>