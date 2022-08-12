<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|Admin Page</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:20px;"> <--Back to home</a>
<br><br/>
<hr><hr>
<div align="center">
<h2>Admin Login</h2>
<div style="border:3px solid black;width:20%;height:20%;background-color:azure;border-radius:15px;padding:20px"
align="center">
<form action=AdminLogin method=post>
<label for=email>Email: </label> 
<input type="email" name=email placeholder=email id=email
/><br><br>
<label for=pass>Password: </label> 
<input type="password" name=password id=pass placeholder=password /><br><br>
<a href=ForgotPassword.jsp style="font-size:25;color:blue;">Forgot Password</a>
<br><br/>
<input type=submit style="border-color:black" value=Submit />
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
</body>
</html>