<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/main.css" />">
<script src="<c:url value="/resources/js/main.js"/>"></script>
<title>Shopp-E | Shop</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet"/>">

<!-- Favicon  -->
<link rel="icon" href="<c:url value="/resources/images/img/core-img/favicon.ico"/>">

<!-- Core Style CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/core-style.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/style.css"/>">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css"/>" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="showHomepage.do"> <img
				src="<c:url value="/resources/images/logo.png"/>" width="50" height="50"
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
					<c:choose>
						<c:when test="${ param.loggedin == true }">
							<li class="nav-item"><a class="nav-link"
								href="logoutUser.do">Logout</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="loginUser.do">Login</a></li>
						</c:otherwise>
					</c:choose>
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
						<li class="breadcrumb-item"><a href="showHomepage.do">Home</a></li>
						<li class="breadcrumb-item active"><a
							href="product-details.html">Categories</a></li>

					</ol>

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
			<div class="col-lg-1"></div>
			<div class="col-lg-7">
				<br>
				<br>
				<br> <img class="img-fluid rounded mb-4 " src="images/shop.png"
					alt="">
			</div>
		</div>
	</div>


	<section class="new_arrivals_area section_padding_100_0 clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_heading text-center">
						<h2>Shop Items</h2>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row karl-new-arrivals">

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/tp2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹38,999</h4>
						<p>7th Gen Intel i5-7200U (2.5 GHz base processor speed, 3 MB
							SmartCache, 2 cores), Max Boost Clock Up to 3.1 GHz</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/tp3.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹177</h4>
						<p>Sunsilk Lusciously Thick & Long shampoo, for visibly
							thicker hair. Provides hair with essential nutrient</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/tp4.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹599</h4>
						<p>100% Cotton Fabrics: Good capability of tenderness, air
							permeability and moisture absorption feels soft and comfy</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l1.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹38,990</h4>
						<p>Asus Core i5 8th Gen is powered by an Intel Core i5 8th Gen
							processor, that ensures easy multitasking and seamless
							performance.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/tp6.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Starting from ₹599</h4>
						<p>Buy the attractive and beautiful looking kids wear and
							dresses for boy and girls age (2+12).Wide range of options
							available.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>



				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹29,650</h4>
						<p>ASUS VivoBook 15 X509 is one of the world’s smallest
							all-rounder 15-inch laptops and is powered by latest Intel Core
							Processor 2.3 GHz.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">₹19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/samsung1.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g3.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g4.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l5.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g5.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l6.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/iphone1.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l7.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g5.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l8.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/iphone2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l9.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g6.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g1.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/oppo1.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l11.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g7.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l12.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/oppo2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l13.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l14.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g8.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/l15.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/samsung2.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g8.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>
				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g9.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g10.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g11.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g12.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g13.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/g14.png" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>

				<!-- Single gallery Item Start -->
				<div
					class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
					data-wow-delay="0.2s">
					<!-- Product Image -->
					<div class="product-img">
						<img src="images/mi_k20.jpg" alt="">
						<div class="product-quicview">
							<a href="product-description.html" data-target="#quickview"><i
								class="ti-plus"></i></a>
						</div>
					</div>
					<!-- Product Description -->
					<div class="product-description">
						<h4 class="product-price">Rs.19,999</h4>
						<p>The Xiaomi Redmi K20 has an octa-core processor. It has an
							Adreno 618 GPU that looks after the graphics requirement of the
							device.</p>
						<!-- Add to Cart -->
						<a href="cart.html" class="add-to-cart-btn">ADD TO CART</a>
					</div>
				</div>
			</div>

		</div>
		</div>


		</div>
	</section>

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