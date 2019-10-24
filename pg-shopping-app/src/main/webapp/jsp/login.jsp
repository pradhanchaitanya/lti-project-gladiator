<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/resources/css/signup.css" />" />
    <script src="<c:url value="/resources/login.js" />"></script>
    <base href="/pg-shopping-app/">
</head>
<body>
<!-- <body background="background-image:bg1.jpg"> -->
	<div id="outerlogin">
	<img src="<c:url value="/resources/images/avatar.png" />" class="avatar"><br>
    <h1 >Login</h1>
    <form name="myForm" action="loginUser.do" method="post">
         <div class="extra"> 
            <br> 
            <input type="email" name="email" class="input" id="EMail" autofocus="on" placeholder="Enter Email">
            <p id="alert2"  text-align:left;" ></p>
        </div>

        <div class="extra">
     		<input type="password" name="password" class="input" id="Password" placeholder="Enter Password">
            <p id="alert3" text-align:left;" ></p>
        </div>

         <div>
        <button type="submit" onclick="return validateLoginForm()" method="post"  font-family="verdana" style="color: white"><strong>Login In</strong></button>
      
        </div>
	  <br>
        <a href="forgotpassword.html" id="fpass">Forgot Password?</a><br>
        <p><i><b>New to ShopWeb?</b></i> <a href="registerUser.do" style="float:right;">Click Here to Sign Up</a></p>

       	</form>
       </div>
</body>
</html>