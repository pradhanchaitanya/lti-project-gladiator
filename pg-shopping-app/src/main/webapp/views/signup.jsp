<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/resources/css/signup.css" />" />
<script src="<c:url value="/resources/js/signup.js" />"></script>
</head>
<body>
	<!--  <div>
        <img src="logo.jpeg" style="height: 10%; width:12%;left: 55%;  padding: 2% 0% 0% 45%;">
    </div>
   -->

	<div id="outer">
		<img src="<c:url value="/resources/images/avatar.png" />" class="avatar"><br>
		<h1 >Create Account</h1>
		<form name="myForm" action="<spring:url value="user/register.do" />" method="post">
			<div class="extra">
				<input type="text" class="input" autofocus="on" id="name" name="name"
					placeholder="Enter Name">
				<p id="alert"  text-align="left" ></p>

			</div>

			<div class="extra">
				<input type="email" class="input" id="EMail" name="email"
					placeholder="Enter EMail">
				<p id="alert2" text-align="left" ></p>
			</div>
			<div class="extra">
				<input type="password" class="input" id="Password" name="password"
					placeholder="Enter Password">
				<p>Passwords must be atleast 6 characters.</p>
				<p id="alert3" text-align="left" ></p>
			</div>

			<div class="extra">
				<input type="tel" class="input" placeholder=" Enter Mobile number" name="mobileNumber"
					id="Telephone">
				<p id="alert1" text-align="left" ></p>
			</div>

			<div class="extra">
				<input type="text" class="input" placeholder=" Enter Address" name="address"
					id="Address">
				<p id="alert4" text-align="left" ></p>
				</input>
			</div>
			<div>
				<button type="submit" onclick="return validateForm()" method="post"
					font-family="verdana" style="color: white">
					<strong>Register</strong>
				</button>
			</div>

		</form>
	</div>

</body>
</html>