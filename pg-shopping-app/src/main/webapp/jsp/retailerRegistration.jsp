<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< HEAD:pg-shopping-app/src/main/webapp/jsp/retailerRegistration.jsp

=======
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
>>>>>>> 38c3d83b2f55f16a4e48508b002b5cf3fe713006:pg-shopping-app/src/main/webapp/jsp/retailer-registration.jsp
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/resources/css/signup.css" />" />
<script src="<c:url value="/resources/js/signup.js" />"> </script>
</head>
<body>
	<!--  <div>
        <img src="logo.jpeg" style="height: 10%; width:12%;left: 55%;  padding: 2% 0% 0% 45%;">
    </div>
   -->

	<div id="outer">
		<img src="<c:url value="/resources/images/avatar.png" />" class="avatar"><br>
		<h1 >Register</h1>
		<form name="myForm" >
			<div class="extra">
				<input type="text" class="input" autofocus="on" id="name"
					placeholder="Enter Name">
				<p id="alert"  text-align="left" ></p>

			</div>

			<div class="extra">
				<input type="email" class="input" id="EMail"
					placeholder="Enter EMail">
				<p id="alert2" text-align="left" ></p>
			</div>
			<div class="extra">
				<input type="password" class="input" id="Password"
					placeholder="Enter Password">
				<p>Passwords must be atleast 6 characters.</p>
				<p id="alert3" text-align="left" ></p>
			</div>

			<div class="extra">
				<input type="tel" class="input" placeholder=" Enter Mobile number"
					id="Telephone">
				<p id="alert1" text-align="left" ></p>
			</div>

			<div class="extra">
				<input type="text" class="input" placeholder=" Enter Address"
					id="Address">
				<p id="alert4" text-align="left" ></p>
				</input>
			</div>
			
			<div class="extra">
				<input type="text" class="input" placeholder=" Enter Account number"
					id="Account">
				<p id="alert5" text-align="left" ></p>
				</input>
			</div>
			<div>
				<button type="button" onclick="return validateForm()" method="post"
					font-family="verdana" style="color: white">
					<strong>Sign In</strong>
				</button>
				<br>
				<p><i><b>Already a Retailer?</b></i> <a href="retailer-login.html" style="float:right;">Click Here to Login in</a></p>
			</div>

		</form>
	</div>
</body>
</html>