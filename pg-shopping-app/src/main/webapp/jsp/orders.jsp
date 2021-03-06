<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>${ user.name }'sOrders</title>
<meta charset="UTF-8">
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
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>

<base href="/pg-shopping-app/">
</head>
<body class="w3-light-grey">

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
					<!-- 
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Log</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="#">Dashboard</a>
						</div>
					</li>
					-->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Pages</a>
						<div class="dropdown-menu" aria-labelledby="karlDropdown">
							<a class="dropdown-item" href="showHomepage.do">Shop</a> <a
								class="dropdown-item" href="showDashboard.do">Dashboard</a> <a
								class="dropdown-item" href="showCart.do">Cart</a> <a
								class="dropdown-item" href="showCheckout.do">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="logoutUser.do">Logout</a>
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
					<span>Welcome, <br /> <strong>${ user.name }</strong></span><br>
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
					class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-diamond fa-fw"></i>Orders</a> <a href="showCart.do"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-bank fa-fw"></i>Cart Items</a>
				<!-- <a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-history fa-fw"></i>WishList</a> <a href="#"
					class="w3-bar-item w3-button w3-padding"><i
					class="fa fa-cog fa-fw"></i>Settings</a> -->
				<br> <br>
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

			<div class="w3-row-padding w3-margin-bottom">
				<div class="w3-quarter">
					<div class="w3-container w3-red w3-padding-16">
						<div class="w3-left">
							<i class="fa fa-shopping-cart w3-xxxlarge"></i>
						</div>
						<div class="w3-right">
							<h3>${ noOfOrders }</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>Purchases Done</h4>
					</div>
				</div>
				<!--
				<div class="w3-quarter">
					<div class="w3-container w3-blue w3-padding-16">
						<div class="w3-left">
							<i class="fa fa-comment w3-xxxlarge"></i>
						</div>
						<div class="w3-right">
							<h3>22</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>Reviews</h4>
					</div>
				</div>
				-->
				<!-- 
				<div class="w3-quarter">
					<div class="w3-container w3-teal w3-padding-16">
						<div class="w3-left">
							<i class="fa fa-share-alt w3-xxxlarge"></i>
						</div>
						<div class="w3-right">
							<h3>12</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>Shares</h4>
					</div>
				</div>
				-->
				<!--
				<div class="w3-quarter">
					<div class="w3-container w3-orange w3-text-white w3-padding-16">
						<div class="w3-left">
							<i class="fa fa-users w3-xxxlarge"></i>
						</div>
						<div class="w3-right">
							<h3>${ noOfProducts }</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>Items in Cart</h4>
					</div>
				</div>
				-->
			</div>


			<hr>
			<div class="w3-container">
				<!-- 
				<h5>General Stats</h5>

				<p>Purchase Stats (last 6 months)</p>
				<div class="w3-grey">
					<div class="w3-container w3-center w3-padding w3-orange"
						style="width: 55%">55%</div>
				</div>
				<hr>
				-->
				<div class="w3-container">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="cart-table clearfix" style="font-size: 20px; width: 100%;">
									<c:choose>
										<c:when test="${ sessionScope.error != null }">
											<div>
												<p>No orders placed yet!</p>
											</div>
										</c:when>
										<c:otherwise>
											<table class="table table-responsive">
												<thead>
													<tr>
														<th>Sr. No.</th>
														<th>Total Price</th>
														<th>Ordered On</th>
													</tr>
												</thead>
												<tbody>


													<c:forEach items="${ orders }" var="order"
														varStatus="status">
														<tr>
															<td>${ status.count }</td>
															<td class="price"><span>${ order.totalPrice }</span></td>
															<td class="qty">
																<h6>${ order.orderedOn }</h6>
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
					</div>
					<br>


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
													<script>
														document
																.write(new Date()
																		.getFullYear());
													</script>
													All rights reserved | Made By - CHAG
											</div>
										</div>
									</div>
								</div>
								<!-- Single Footer Area Start -->
								<div class="col-12 col-sm-6 col-md-3 col-lg-2">
									<div class="single_footer_area">
										<ul class="footer_widget_menu">
											<li><a href="showAbout.do">About</a></li>
											<li><a href="#">Our Policies</a></li>
											<li><a href="#" data-toggle="modal"
												data-target="#modalContactForm">Contact Us</a></li>
										</ul>
									</div>
								</div>
								<!-- Single Footer Area Start -->
								<div class="col-12 col-sm-6 col-md-3 col-lg-2">
									<div class="single_footer_area">
										<ul class="footer_widget_menu">
											<li><a href="#">My Account</a></li>
											<li><a href="showCart.do">Cart</a></li>
											<li><a href="showRetailerHomepage.do">Afiliates</a></li>
										</ul>
									</div>
								</div>
								<!-- Single Footer Area Start -->
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
							</div>

						</div>

						<!-- Modal for Contact Us Page-->

						<div class="modal fade" id="modalContactForm" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header text-center">
										<h4 class="modal-title w-100 font-weight-bold">Write to
											us</h4>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body mx-3">
										<div class="md-form mb-5">
											<i class="fa fa-user prefix grey-text"></i> <label
												data-error="wrong" data-success="right" for="form34">Your
												name</label> <input type="text" id="form34"
												class="form-control validate" value="${ user.name }">
										</div>

										<div class="md-form mb-5">
											<i class="fa fa-envelope prefix grey-text"></i> <label
												data-error="wrong" data-success="right" for="form29">Your
												email</label> <input type="email" id="form29"
												class="form-control validate" value="${ user.email }">
										</div>

										<div class="md-form mb-5">
											<i class="fa fa-tag prefix grey-text"></i> <label
												data-error="wrong" data-success="right" for="form32">Subject</label>
											<input type="text" id="form32" class="form-control validate">

										</div>

										<div class="md-form">
											<i class="fa fa-pencil prefix grey-text"></i> <label
												data-error="wrong" data-success="right" for="form8">Your
												message</label>
											<textarea type="text" id="form8"
												class="md-textarea form-control" rows="4"></textarea>

										</div>

									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button class="modal-title w-50 font-weight-bold"
											class="btn btn-unique">
											Send <i class="fa fa-paper-plane-o ml-1"></i>
										</button>
									</div>
								</div>
							</div>
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
