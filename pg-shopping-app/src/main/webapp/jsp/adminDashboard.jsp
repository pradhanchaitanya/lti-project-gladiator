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
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Shopp-E | Admin Dashboard</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

<!-- Favicon  -->
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
							<a class="dropdown-item" href="shop.html">Shop</a> <a
								class="dropdown-item" href="product-details.html">Product
								Details</a> <a class="dropdown-item" href="cart.html">Cart</a> <a
								class="dropdown-item" href="checkout.html">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Comparator</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="login.html">Login/SignUp</a>
					</li>

					<form class="form-inline my-2 my-lg-0 ml-auto">
						<input class="form-control" type="search" placeholder="Search"
							aria-label="Search">&nbsp;&nbsp;&nbsp;
						<button class="text-white bg-dark"
							class="btn btn-outline-black btn-md my-2 my-sm-0 ml-3"
							type="submit">Search</button>
					</form>
				</ul>
			</div>
		</div>
	</nav>
	<div class="pb-5">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

					<!-- Retailer table -->
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" class="border-0 bg-light">
										<div class="p-2 px-3 text-uppercase">Retailer's Id</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">Retailer's Name</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">Retailer's Address</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">Notification to Verify
										</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">Remove</div>
									</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items = "${ retailers }" var = "retailer" varStatus = "status">
									<tr>
									<th scope="row" class="border-0">
										<div class="p-2">
											<div class="ml-3 d-inline-block align-middle">
												<h6>${ status.count }</h6>
											</div>
										</div>
									</th>
									<td class="border-0 align-middle">${ retailer.name }</td>
									<td class="border-0 align-middle">${ retailer.address }</td>
									<td class="border-0 align-middle"><a href="verifyRetailer.do/${ retailer.id }">Verify
											Retailer?</a></td>
									<td class="border-0 align-middle"><a href=""
										class="text-dark"><i class="fa fa-trash"></i></a></td>
								</tr>
								</c:forEach>
								<!-- 
								<tr>
									<th scope="row" class="border-0">
										<div class="p-2">
											<div class="ml-3 d-inline-block align-middle">
												<h6>101</h6>
											</div>
										</div>
									</th>
									<td class="border-0 align-middle">Amit Shukla</td>
									<td class="border-0 align-middle"><a href="#">Verify
											Retailer?</a></td>
									<td class="border-0 align-middle"><a href="#"
										class="text-dark"><i class="fa fa-trash"></i></a></td>

								</tr>
								<tr>
									<th scope="row" class="border-0">
										<div class="p-2">
											<div class="ml-3 d-inline-block align-middle">
												<h6>102</h6>
											</div>
										</div>
									</th>
									<td class="border-0 align-middle">Chaitanya Pradhan</td>
									<td class="border-0 align-middle"><a href="#">Verify
											Retailer?</a></td>
									<td class="border-0 align-middle"><a href="#"
										class="text-dark"><i class="fa fa-trash"></i></a></td>

								</tr>
								-->
							</tbody>
						</table>
					</div>
					<!-- End -->
				</div>
			</div>

		</div>
	</div>

	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>
</html>