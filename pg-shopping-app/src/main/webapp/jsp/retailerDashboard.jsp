<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<title>${ retailer.name }'sDashboard</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Bootstrap core CSS -->
<link
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />"
	rel="stylesheet">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">



<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>
<body class="w3-light-grey">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="showRetailerHomepage.do"> <img
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
					<!--
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
							<a class="dropdown-item" href="#">Shop</a> <a
								class="dropdown-item" href="product-details.html">Product
								Details</a> <a class="dropdown-item" href="cart.html">Cart</a> <a
								class="dropdown-item" href="checkout.html">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Comparator</a>
					</li>
					-->
					<li class="nav-item"><a class="nav-link"
						href="logoutRetailer.do">Logout</a></li>
					<!-- 
					<form class="form-inline my-2 my-lg-0 ml-auto">
						<input class="form-control" type="search" placeholder="Search"
							aria-label="Search">&nbsp;&nbsp;&nbsp;
						<button class="text-white bg-dark"
							class="btn btn-outline-black btn-md my-2 my-sm-0 ml-3"
							type="submit">Search</button>
					</form>
					-->
				</ul>
			</div>
		</div>
	</nav>

	<div class="col-lg-12">
		<!-- Sidebar/menu -->
		<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
			style="z-index: 3; width: 300px;" id="mySidebar">
			<br>
			<div class="w3-container w3-row">
				<div class="w3-col s4">
					<img src="<c:url value="/resources/images/avatar.png" />"
						class="w3-circle w3-margin-right" style="width: 46px">
				</div>
				<div class="w3-col s8 w3-bar">
					<span>Welcome, <br /> <strong>${ retailer.name }</strong></span><br>
					<a href="#" class="w3-bar-item w3-button"><i
						class="fa fa-envelope"></i></a> <a href="#"
						class="w3-bar-item w3-button"><i class="fa fa-user"></i></a> <a
						href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
				</div>
			</div>
			<hr>
			<div class="w3-container">
				<h5>Dashboard</h5>
			</div>
			<div class="w3-bar-block">
				<a href="#"
					class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
					onclick="w3_close()" title="close menu"><i
					class="fa fa-remove fa-fw"></i>  Close Menu</a> <!-- <a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-diamond fa-fw"></i>&nbsp;Sales</a> <a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-cog fa-fw"></i>&nbsp;Change Password</a><a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-cog fa-fw"></i>&nbsp;Delete Account</a>--><br> <br>
			</div>
		</nav>


		<!-- Overlay effect when opening sidebar on small screens -->
		<div class="w3-overlay w3-hide-large w3-animate-opacity"
			onclick="w3_close()" style="cursor: pointer" title="close side menu"
			id="myOverlay"></div>

		<!-- !PAGE CONTENT! -->
		<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

			<!-- Header -->
			<header class="w3-container" style="padding-top: 22px">
				<h5>
					<b><i class="fa fa-dashboard"></i> My Dashboard</b>
				</h5>
			</header>
			<hr>
			<div class="w3-container">

				<div class="text-right">
					<button class="btn btn-primary btn-rounded mb-4"
						data-toggle="modal" data-target="#modalAddProductForm">Add
						Product</button>
				</div>

				<!-- for Adding Products -->

				<div class="modal fade" id="modalAddProductForm" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header text-center">
								<h4 class="modal-title w-100 font-weight-bold">Add Product</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="false">&times;</span>
								</button>
							</div>
							<div class="modal-body mx-3">
								<form action="addProduct.do" method="post"
									enctype="multipart/form-data">
									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form">
											Name </label> <input type="text" id="form" name="name"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form1">
											Description </label> <input type="text" id="form1" name="description"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form2">
											Price </label> <input type="text" id="form2" name="price"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form4">
											Category </label> <input type="text" id="form4" name="category"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form5">
											Brand </label> <input type="text" id="form5" name="brand"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form6">
											Quantity </label> <input type="number" id="form6" name="quantity"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form7">
											Discount </label> <input type="text" id="form7" name="discount"
											class="form-control validate">
									</div>

									<div class="md-form mb-4">
										<label class="modal-title w-50 font-weight-bold"
											data-error="wrong" data-success="right" for="form3">
											Image </label> <input type="file" id="form3" name="image"
											class="form-control validate">
									</div>
							</div>

							<div class="modal-footer d-flex justify-content-center">
								<button class="modal-title w-50 font-weight-bold"
									class="btn btn-primary" onclick="#">Submit</button>
							</div>
							</form>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="text-left">
							<h4>Products on Sale : &nbsp;</h4>
						</div>
						<div class="text-right">
							<h4>${ noOfProducts }</h4>
						</div>
					</div>
				</div>
				<hr>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="cart-table clearfix" style="font-size: 20px;">
								<c:choose>
									<c:when test="${ sessionScope.error != null }">
										<div>
											<p>No products on sale!</p>
										</div>
									</c:when>
									<c:otherwise>
										<table class="table table-responsive">
											<thead>
												<tr>
													<th>Sr. No.</th>
													<th>Product Details</th>
													<th>Price</th>
													<th>Quantity</th>
												</tr>
											</thead>
											<tbody>


												<c:forEach items="${ products }" var="product"
													varStatus="status">
													<tr>
														<td>${ status.count }</td>
														<td class="cart_product_img d-flex align-items-center"><a
															href="#"><img
																src="<c:url value="/resources/images/uploads/${ product.imagePath }" />"
																alt="Product"></a>
															<h6>${ product.name }</h6></td>
														<td class="price"><span>${ product.price }</span></td>
														<td class="qty">
															<h6>${ product.quantity }</h6>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</c:otherwise>
								</c:choose>

							</div>
						</div>
					</div>

					<!-- ****** Footer Area Start ****** -->
					<footer class="footer_area">
						<div class="container">
							<div class="row">
								<!-- Single Footer Area Start -->
								<div class="col-12 col-md-6 col-lg-3">
									<div class="single_footer_area">
										<div class="footer-logo">
											<img src="<c:url value="/resources/images/logo.png" />"
												alt="" height="200px" width="200px">
											<div class="copywrite_text d-flex align-items-center">
												<p>
													Copyright &copy;
													<script>document.write(new Date().getFullYear());</script>
													All rights reserved | Made By - CHAG
											</div>
										</div>
									</div>
								</div>
								<!-- Single Footer Area Start -->
								<div class="col-12 col-sm-6 col-md-3 col-lg-2">
									<div class="single_footer_area">
										<ul class="footer_widget_menu">
											<li><a href="#">About</a></li>
											<li><a href="#">Our Policies</a></li>
											<li><a href="#">Contact Us</a></li>
										</ul>
									</div>
								</div>
								<!-- Single Footer Area Start -->
								<div class="col-12 col-sm-6 col-md-3 col-lg-2">
									<div class="single_footer_area">
										<ul class="footer_widget_menu">
											<li><a href="#">My Account</a></li>
											<li><a href="showRetailerHomepage.do">Afiliates</a></li>
										</ul>
									</div>
								</div>
								<!-- Single Footer Area Start -->
								<!-- 
						<div class="col-12 col-lg-5">
							<div class="single_footer_area">
								<div class="footer_heading mb-30">
									<h6>Subscribe to our newsletter</h6>
								</div>
								<div class="subscribtion_form">
									<form action="#" method="post">
										<input type="email" name="mail" class="mail"
											placeholder="Your email here">
										<button type="submit" class="submit">Subscribe</button>
									</form>
								</div>
							</div>
						</div>
						-->
							</div>

						</div>
						<!-- </div> -->
				</div>
				</footer>
				<!-- ****** Footer Area End ****** -->
			</div>
		</div>
		<!-- /.wrapper end -->

		<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>



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
