<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway|forgotPassword</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:20px;"> <--Back to login</a>
<hr><hr>
<div align="center">
<h1>Forgot Password</h1>
<div style="border:3px solid black;width:25%;background-color:azure;border-radius:20px;padding:20px" 
align="center">
<form action=ForgotPassword method=post>
<label for=email>Email: </label> 
<input type="email" name=email id=email placeholder=email
/><br><br>
<label for=pass>New Password: </label> 
<input type="password" name=password id=pass placeholder=password /><br><br>
<input type=submit value=Submit style="border-color:black" /> 
<input type=reset style="border-color:black"/>
</form>
</div>
</div>
</body>
</html>