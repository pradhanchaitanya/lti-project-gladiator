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
<title>Shop Homepage</title>

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
				class="d-inline-block align-top" alt="" /> Shop-E
			</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">Log <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Pages</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="#">Shop</a> <a
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
	
	<!-- <<<<<<<<<<<<<<<<<<<< Breadcumb Area Start <<<<<<<<<<<<<<<<<<<< -->
        <div class="breadcumb_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <ol class="breadcrumb d-flex align-items-center">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item"><a href="product-details.html">Categories</a></li>
                            <li class="breadcrumb-item active"><a href="groceries.html">Groceries</a></li>
                        </ol>
                        <!-- btn -->
                        <a href="product-details.html" class="backToHome d-block"><i class="fa fa-angle-double-left"></i> Back to Category</a>
                    </div>
                </div>
            </div>
        </div>

	<div class="container">

		<div class="row">

			<div class="col-lg-4">
				<!--  Side Nav  -->
				<div class="nav-side-menu">
					<div class="menu-list">
						<h6>Categories</h6>
						<ul id="menu-content" class="menu-content collapse out">
							<!-- Single Item -->
							<li data-toggle="collapse" data-target="#mobile"
								class="collapsed active"><a href="#">Mobiles <span
									class="arrow"></span></a>
								<ul class="sub-menu collapse" id="mobile">
									<li><a href="#"> Redmi </a></li>
									<li><a href="#">Oppo</a></li>
									<li><a href="#">Samsung</a></li>
									<li><a href="#">Apple</a></li>
								</ul></li>

							<li data-toggle="collapse" data-target="#laptop"
								class="collapsed active"><a href="#">Laptops<span
									class="arrow"></span></a>
								<ul class="sub-menu collapse" id="laptop">
									<li><a href="#">Mac</a></li>
									<li><a href="#">Lenovo</a></li>
									<li><a href="#">Asus</a></li>
									<li><a href="#">HP</a></li>
									<li><a href="#">MSI</a></li>
								</ul></li>

							<li data-toggle="collapse" data-target="#clothing"
								class="collapsed active"><a href="#">Clothing<span
									class="arrow"></span></a>
								<ul class="sub-menu collapse" id="clothing">
									<li><a href="#"> Men </a></li>
									<li><a href="#">Women</a></li>
									<li><a href="#">Kids</a></li>
								</ul></li>

							<li data-toggle="collapse" data-target="#groceries"
								class="collapsed active"><a href="#">Groceries &
									Household Supplies<span class="arrow"></span>
							</a>
								<ul class="sub-menu collapse" id="groceries">
									<li><a href="#">Cooking Essentials</a></li>
									<li><a href="#">Health & Personal Care</a></li>
									<li><a href="#">Household Supplies</a></li>
									<li><a href="#">Personal Care & Health Appliances</a></li>

								</ul></li>

						</ul>
					</div>
				</div>

				<br>

				<div class="widget price mb-50">
					<h6 class="widget-title mb-30">Filter by Price</h6>
					<div class="widget-desc">
						<div class="slider-range">
							<div data-min="0" data-max="30000" data-unit="₹"
								class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
								data-value-min="0" data-value-max="1350"
								data-label-result="Price:">
								<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
								<span class="ui-slider-handle ui-state-default ui-corner-all"
									tabindex="0"></span> <span
									class="ui-slider-handle ui-state-default ui-corner-all"
									tabindex="0"></span>
							</div>
							<div class="range-price">Price: 0 - 1350</div>
						</div>
					</div>
				</div>

			</div>
			</div>
			</div>
			
			
			
</body>
</html>