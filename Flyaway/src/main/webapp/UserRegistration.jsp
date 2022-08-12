<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLyAway|UserRegistration</title>
</head>
<body >
<h1>FlyAway Booking Portal</h1>
<div align="right">
<a href=UserPage.jsp style="color:black;text-decoration:none;font-size:20px;">Back --></a>
</div>
<hr><hr>
<div align="center">
<h1>Create New Account</h1>
<div style="border:3px solid black;width:20%;background-color:azure;border-radius:20px;padding:20px" 
align="center">
<p align="left" style="font-size:20px">Fill Details:</p>
<form action=UserRegistration method=post>
<label for=email>Email: </label> 
<input type="email" name=email placeholder=email id=email/><br><br>
<label for=pass>Password: </label> 
<input type="password" name=password placeholder=password id=pass /><br><br>
<label for=name>Name: </label> 
<input type="text" name=name id=name placeholder=name /><br><br>
<label for=phno>Phone No.: </label> 
<input type="text" name=phno id=phno placeholder=phonenumber /><br><br>
<label for=adno>Aadhaar No.: </label> <input type="text" name=adno placeholder=aadhaarnumber id=adno/><br><br>
<input type=submit value=Submit style="border-color:black" /> 
<input type=reset style="border-color:black"/>
</form>
</div>
</div>
</body>
</html>