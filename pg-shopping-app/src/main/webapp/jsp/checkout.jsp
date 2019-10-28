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
<link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/resources/css/signup.css" />" />
<script src="<c:url value="/resources/js/signup.js" />"></script>
<title>Shopp-E | Checkout</title>



<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" /> rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

<!-- Core Style CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/core1-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/main.js" />"></script>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="index.html"> <img
				src="<c:url value="/resources/images/logo.png" />" width="50" height="50"
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
						aria-expanded="false">Pages</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="showHomepage.do">Shop</a> 
							<a class="dropdown-item" href="showDashboard.do">Dashboard</a>
							<a class="dropdown-item" href="showCart.do">Cart</a> 
							<a class="dropdown-item" href="#">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="logoutRetailer.do">Logout</a>
					</li>

					<form class="form-inline my-2 my-lg-0 ml-auto">
						<input class="form-control" type="search" placeholder="Search"
							aria-label="Search">&nbsp;&nbsp;&nbsp;
						<button class="text-white bg-dark"
							class="btn btn-outline-black btn-md my-2 my-sm-0 ml-3"
							type="submit" style="width :100px;" >Search</button>
					</form>
				</ul>
			</div>
		</div>
	</nav>

	<!-- <<<<<<<<<<<<<<<<<<<< Breadcumb Area Start <<<<<<<<<<<<<<<<<<<< -->
	<div class="breadcumb_area">
		<div class="container">

			<div class="col-12">
				<ol class="breadcrumb d-flex align-items-center">
					<li class="breadcrumb-item"><a href="showHomepage.do">Log</a></li>
					<li class="breadcrumb-item"><a href="showDashboard.do">DashBoard</a></li>
					<li class="breadcrumb-item "><a href="showCart.do">Cart</a></li>
					<li class="breadcrumb-item active"><a href="#">Checkout</a></li>

				</ol>
			</div>
		</div>
	</div>

	<div class="container">

		<div class="col-lg-9">
			
			<hr>
			<ul class="cart-total-chart">
				<li><span>Subtotal</span> <span>Rs. ${ cart.totalPrice }</span></li>
				<li><span>Shipping</span> <span>Free</span></li>
				<li><span><strong>Total</strong></span> <span><strong>Rs. ${ cart.totalPrice }</strong></span></li>
			</ul>
			<div>
				<a data-toggle="modal" class="btn karl-checkout-btn"
					data-target="#modalCheckoutForm">Confirm Order</a>
			</div>
		</div>



		<div class="modal fade" id="modalCheckoutForm" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header text-center">

						<h4 class="modal-title w-100 font-weight-bold">Confirmation</h4>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<br>
					<div class="modal-body mx-5">
						<h4 class="modal-title w-30 font-weight-bold">Do you want to place the order?</h4>
						<br>
						<div class="md-form mb-4">

							<div class="modal-footer d-flex justify-content-center">

								<button class="btn btn-secondary"
									class="modal-title w-50 font-weight-bold">
									<a href="confirmOrder.do">Place Order</a>
								</button>
							</div>


						</div>
					</div>


				</div>
			</div>
		</div>




	</div>

	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script
		src="<c:url value="/resources/js/jquery/jquery-2.2.4.min.js" />"></script>
	<!-- Popper js -->
	<script src="<c:url value="/resources/js/popper.min.js" />"></script>
	<!-- Bootstrap js -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<!-- Plugins js -->
	<script src="<c:url value="/resources/js/plugins.js" />"></script>
	<!-- Active js -->
	<script src="<c:url value="/resources/js/active.js" />"></script>


</body>
</html>

