<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/main.css" />">
<script src="main.js"></script>
<script src="<c:url value="/resources/js/main.js" />"> </script>

<title>Retailer Homepage</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

<!-- Favicon  -->

<link rel="icon" href="<c:url value="/resources/img/core-img/favicon.ico" />">

<link rel="icon" href="<c:url value="/resources/images/img/core-img/favicon.ico" />">


<!-- Core Style CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="showHomepage.do"> 
				<img src="<c:url value="/resources/images/logo.png" />" width="50" height="50"
				class="d-inline-block align-top" alt="" /> Shopp-E
			</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Log</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="#">Dashboard</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Pages</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="#">Shop</a> 
							<a class="dropdown-item" href="product-details.html">Product Details</a> 
							<a class="dropdown-item" href="cart.html">Cart</a> 
							<a class="dropdown-item" href="checkout.html">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Comparator</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="loginRetailer.do">Login</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Heading Row -->
		<div class="row align-items-center my-5">
			<div class="col-lg-7">
				<img class="img-fluid rounded mb-4 mb-lg-0"
					src="<c:url value="/resources/images/retailer.png" />" alt="">
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-5">
				<h1 class="font-weight-light">Sell your products to customers
					across India</h1>
				<p>
				<ul>
					<li>Make Sales Sitting At Home</li><li> We will pick, pack & deliver
					your products and also handle customer support
					</li>
				</ul>
				</p>
				<a class="btn btn-primary" href="registerRetailer.do">Register Now!</a>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->

		<!-- Call to Action Well -->
		<div class="card text-white bg-secondary my-5 py-4 text-center">
			<div class="card-body">
				<p class="text-white m-0">It only takes 15 mins to setup your account!!</p>
			</div>
		</div>

		<!-- Content Row -->
		<div class="row">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">1: Create your account</h2>
						<p class="card-text">To become a Shopp-E seller, all you need is your bank account info</p>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">2: Add your products</h2>
						<p class="card-text">List your products for crores of customers and businesses to purchase</p>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">3: Start Selling</h2>
						<p class="card-text">Payments are directly & securely deposited in your bank account in 7 days, even for Pay on Delivery orders</p>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	</body>
	</html>