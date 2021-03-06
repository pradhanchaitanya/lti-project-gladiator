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
<link rel="stylesheet" type="text/css" href="main.css">
<script src="main.js"></script>
<title>Shop Homepage</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

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


			<a class="navbar-brand" href="showHomepage.do"> <img
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
							<a class="dropdown-item" href="#">Shop</a> <a
								class="dropdown-item" href="product-details.html">Product
								Details</a> <a class="dropdown-item" href="cart.html">Cart</a> <a
								class="dropdown-item" href="checkout.html">Checkout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Comparator</a>
					</li>
					<c:choose>
						<c:when test="${ param.loggedin == true }">
							<li class="nav-item"><a class="nav-link" href="logoutUser.do">Logout</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="loginUser.do">Login</a></li>
						</c:otherwise>
					</c:choose>
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
	<br>
	<br>
	<br>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-9">
	<p align="justify">
	Welcome to <b>SHOPP-E!</b>
<br><br>
We aim to offer our customers a variety of the latest products. We have come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.
<br>
We always keep an eye on the latest trends in shopping and put our customers wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the e-commerce industry.
<br>
The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.
	</p>
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
										<img src="<c:url value="/resources/images/logo.png" />" alt="" height="200px" width="200px">
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
										<li><a href=""  data-toggle="modal" data-target="#modalContactForm">Contact Us</a></li>
									</ul>
								</div>
							</div>
							<!-- Single Footer Area Start -->
							<div class="col-12 col-sm-6 col-md-3 col-lg-2">
								<div class="single_footer_area">
									<ul class="footer_widget_menu">
										<li><a href="showDashboard.do">My Account</a></li>
										<li><a href="cart.html">Cart</a></li>
										<li><a href="retailer.html">Afiliates</a></li>
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
<!-- Modal for Contact Us Page-->

<div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Write to us</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fa fa-user prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="form34">Your name</label>
          <input type="text" id="form34" class="form-control validate" value="${ user.name }">
        </div>

        <div class="md-form mb-5">
          <i class="fa fa-envelope prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="form29">Your email</label>
          <input type="email" id="form29" class="form-control validate" value="${ user.email }">
        </div>

        <div class="md-form mb-5">
          <i class="fa fa-tag prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="form32">Subject</label>
                 <input type="text" id="form32" class="form-control validate">
       
        </div>

        <div class="md-form">
          <i class="fa fa-pencil prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="form8">Your message</label>
                  <textarea type="text" id="form8" class="md-textarea form-control" rows="4"></textarea>
        
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="modal-title w-50 font-weight-bold" class="btn btn-unique">Send <i class="fa fa-paper-plane-o ml-1"></i></button>
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