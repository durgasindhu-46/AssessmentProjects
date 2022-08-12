<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|Userpage</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<div align="right">
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:20px;">Back to home--></a>
</div>
<hr><hr>
<div align="center">
<h2>User Login</h2>
<div style="border:3px solid black;width:20%;height:20%;background-color:azure;border-radius:15px;padding:20px" 
align="center">
<p style="font-size:20px"  align="left">Enter details to login:</p>
<form action=UserLogin method=post >
 <table >
 <tr>
 <td><label for=email>Email</label><br></td>
 <td><input type="email" name=email id=email placeholder=email /></td>
 </tr>

 <tr>
 <td><label for=pass>Password</label><br></td>
 <td><input type="password" name=password id=pass placeholder=password /></td>
 </tr>
 </table>
 <br><br/>
 <input type=submit value=Submit  style="border-color:black" />
 <input type=reset  style="border-color:black" />
</form>

<p style="font-size:20px"  align="left">To create new account:
<a href=UserRegistration.jsp style="font-size:25;color:blue;text-decoration:none">New Account</a>
</p>
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