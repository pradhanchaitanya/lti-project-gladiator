<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">
<script src="<c:url value="/resources/js/main.js" />">
	
</script>

<title>Cart</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/shop-homepage.css" />"
	rel="stylesheet">

<!-- Favicon  -->
<link rel="icon"
	href="<c:url value="/resources/images/img/core-img/favicon.ico" />">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">

<!-- Responsive CSS -->
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">
<base href="/pg-shopping-app/">
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">

			<a class="navbar-brand" href="showHomepage.do"> <img
				src="<c:url value="/resources/images/logo1.png" />" width="50"
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
							<a class="dropdown-item" href="#">Shop</a> <a
								class="dropdown-item" href="product-details.html">Product
								Details</a> <a class="dropdown-item" href="#">Cart</a> <a
								class="dropdown-item" href="showCheckout.do">Checkout</a>
						</div></li>
					<li class="navitem"><a class="nav-link" href="logoutUser.do">Logout</a>
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

			<div class="col-12">
				<ol class="breadcrumb d-flex align-items-center">
					<li class="breadcrumb-item"><a href="showHomepage.do">Log</a></li>
					<li class="breacrumb-item"><a href="showDashboard.do">Dashboard</a></li>
					<li class="breadcrumb-item active"><a href="#">Cart</a></li>
				</ol>
			</div>
		</div>
	</div>


	<!-- ****** Cart Area Start ****** -->
	<div class="cart_area section_padding_100 clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="cart-table clearfix">
						<c:choose>
							<c:when test="${ sessionScope.error != null }">
								<div>
									<p>No products in your cart right now!</p>
								</div>
							</c:when>
							<c:otherwise>
								<table class="table table-responsive">
									<thead>
										<tr>
											<th>Product</th>
											<th>Price</th>
											<th>Action</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>


										<c:forEach items="${ products }" var="product"
											varStatus="status">
											<script>
												var $qty = 'qty' + $
												{
													status.count
												}
											</script>
											<tr>
												<td class="cart_product_img d-flex align-items-center"><a
													href="#"><img
														src="<c:url value="/resources/images/tp1.png" />"
														alt="Product"></a>
													<h6>${ product.name }</h6></td>
												<td class="price"><span>${ product.price }</span></td>
												<td class="qty">
													<div class="quantity">
														<!--
                                                <span class="qty-minus" onclick="var effect = document.getElementById($qty); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                <input type="number" class="qty-text" id=qty step="1" min="1" max="99" name="quantity" value="1">
                                                <span class="qty-plus" onclick="var effect = document.getElementById($qty); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
												-->
														<a href="removeFromCart.do?id=${ product.id }"><button
																type="button" class="btn btn-danger btn-sm">
																<span class="glyphicon glyphicon-trash"></span>Remove
															</button> </span></a>
													</div>
												</td>
												<td class="total_price"><span id="totalPrice">${ product.price }</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>

					</div>
					
					<div class="cart-footer d-flex mt-30">
						<div class="back-to-shop w-50">
							<a href="showHomepage.do">Continue shopping</a>
						</div>
						<!-- 
						<div class="update-checkout w-50 text-right">
							<a href="#">Clear cart</a> <a href="#">Update cart</a>
						</div>
						-->
					</div>
					
				</div>
			</div>

			<div class="row">

				<div class="col-lg-12">
					<div class="shipping-method-area mt-70">
						<div class="cart-page-heading">
							<h5>Payment Method</h5>
							<p>Select the one you prefer</p>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio1" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio1"><span>Cash On Delivery</span><span>Rs.37,999</span></label>
						</div>

						<div class="custom-control custom-radio mb-30">
							<input type="radio" id="customRadio2" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio2"><span>Debit Card(5% off on
									Select banks)</span><span>Rs.37,250*</span></label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio3" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label d-flex align-items-center justify-content-between"
								for="customRadio3"><span>Credit Card(10% off on
									Select banks)</span><span>Rs.36,550*</span></label>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="cart-total-area mt-70">
						<div class="cart-page-heading">
							<h5>Cart Total</h5>
							<p>Checkout</p>
						</div>

						<ul class="cart-total-chart">
							<li><span>Subtotal</span> <span>Rs.36,250</span></li>
							<li><span>Shipping</span> <span>Free</span></li>
							<li><span><strong>Total</strong></span> <span><strong>Rs.36,250</strong></span></li>
						</ul>
						<a href="showCheckout.do" class="btn karl-checkout-btn">Proceed
							to checkout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Cart Area End ****** -->
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