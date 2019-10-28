<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/main.css" />">
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>${ product.name }</title>



<!-- Bootstrap core CSS -->
<link
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />"
	rel="stylesheet">

<!-- Favicon  -->
<link rel="icon"
	href="<c:url value="/resources/images/img/core-img/favicon.ico" />">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/core1-style.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
	
<script src="<c:url value="/resources/js/main.js" />"></script>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="showHomepage.do"> <img
				src="<c:url value="/resources/images/logo.png" />" width="50"
				height="50" class="d-inline-block align-top" alt="" /> Shopp-E
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
							<a class="dropdown-item" href="showDashboard.do">Dashboard</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Pages</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="#">Shop</a> 
							<a class="dropdown-item" href="showDashboard.do">Dashboard</a> 
							<a class="dropdown-item" href="showCart.do">Cart</a> 
							<a class="dropdown-item" href="checkout.html">Checkout</a>
						</div></li>
					
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
						<li class="breadcrumb-item"><a href="product-details.html">Categories</a></li>
						<li class="breadcrumb-item "><a href="showCategory.do?category=${ product.category }">${ product.category }</a></li>
						<li class="breadcrumb-item active"><a href="#">${ product.brand }</a></li>
					</ol>
					<!-- btn -->
					<!-- 
					<a href="product-details.html" class="backToHome d-block"><i
						class="fa fa-angle-double-left"></i> Back to Category</a>
					-->
				</div>
			</div>
		</div>
	</div>



	<main class="container"> <!-- Left Column / Headphones Image -->
	<div class="left-column">
		<img data-image="black" class="active"
			src="<c:url value="/resources/images/uploads/${ product.imagePath }" />" alt="">
	</div>


	<!-- Right Column -->
	<div class="right-column">

		<!-- Product Description -->
		<div class="product-description">
			<span>${ product.name }</span>
			<p>${ product.description }</p>
		</div>

		<!-- Product Configuration -->
		<div class="product-configuration">

		</div>

		<!-- Product Pricing -->
		<div class="product-price">
			<strike>Rs. ${ product.price }</strike>
			<br>
			<p>Discount: ${ product.discount }%</p>
			<p>You get it for: ${ product.price - product.price * product.discount / 100 }</p>
			<c:if test="${ param.loggedin == true }">
				<!-- Add to Cart -->
				<a href="addToCart.do?id=${ product.id }" class="add-to-cart-btn">ADD TO CART</a>
			</c:if>
		</div>
	</div>

	<!-- For Review -->

	<div class="modal fade" id="modalReviewForm" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h4 class="modal-title w-100 font-weight-bold">Review</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body mx-3">
					<div class="md-form mb-5">
						<i class="fa fa-envelope prefix grey-text"></i> <label
							data-error="wrong" data-success="right" for="form3">Your
							Email</label> <input type="email" id="form3" value="${ user.email }"
							class="form-control validate">
					</div>

					<div class="md-form mb-4">

						<i class="fa fa-pencil prefix grey-text"></i> <label
							data-error="wrong" data-success="right" for="form2">Review</label>
						<input type="text" id="form2" class="form-control validate">
					</div>
				</div>

				<div class="modal-footer d-flex justify-content-center">

					<button class="modal-title w-50 font-weight-bold" onclick="#">
						Submit<i class="fa fa-paper-plane-o ml-1"></i>
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="text-right">
		<a href="" class="btn btn-default btn-rounded mb-4"
			data-toggle="modal" data-target="#modalReviewForm">Write Reviews</a>
	</div>

	<div></div>
	</main>

	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="<c:url value="/resources/js/jquery/jquery-2.2.4.min.js" />"></script>
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