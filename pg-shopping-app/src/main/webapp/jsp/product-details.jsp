<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<!-- Core Style CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/core-style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/style.css" />">

<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">


			<a class="navbar-brand" href="showHomepage.do"> <img
				src="<c:url value="/resources/images/logo.png"  />"width="50" height="50"
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
							<a class="dropdown-item" href="userdashboard.html">Dashboard</a>
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
						<li class="breadcrumb-item active"><a href="product-details.html">Categories</a></li>
						
					</ol>
					
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
		
			<div class="col-lg-3">
				<h1 class="my-4">Categories</h1>
				<div class="list-group">
					<a href="mobiles.html" class="list-group-item">Mobiles</a> 
					<a href="laptops.html" class="list-group-item">Laptops</a> 
					<a href="groceries.html" class="list-group-item">Groceries & Household Supplies</a> 
					<a href="clothings.html" class="list-group-item">Clothing</a>
				</div>
			</div> 
			<div class="col-lg-9">
				<img class="img-fluid rounded mb-4 "
					src="<c:url value="/resources/images/discount.png" />" alt="">
			</div>
			
			<section class="new_arrivals_area section_padding_100_0 clearfix">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="section_heading text-center">
									<h2>Deal of the Day</h2>
								</div>
							</div>
						</div>
					</div>

					<div class="container">
						<div class="row karl-new-arrivals">

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp1.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Rs.37,999</h4>
									<p>Octa core Qualcomm Snapdragon 855. Connectivity options
										included in the device are Bluetooth, Wi-Fi, 3G and 4G</p>
									<!-- Add to Cart -->
									<a href="#" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp2.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Rs.38,999</h4>
									<p>7th Gen Intel i5-7200U (2.5 GHz base processor speed, 3
										MB SmartCache, 2 cores), Max Boost Clock Up to 3.1 GHz</p>
									<!-- Add to Cart -->
									<a href="#" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp3.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Rs.177</h4>
									<p>Sunsilk Lusciously Thick & Long shampoo, for visibly
										thicker hair. Provides hair with essential nutrient</p>
									<!-- Add to Cart -->
									<a href="#" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp4.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Rs.599</h4>
									<p>100% Cotton Fabrics: Good capability of tenderness, air
										permeability and moisture absorption feels soft and comfy</p>
									<!-- Add to Cart -->
									<a href="#" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp5.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Rs.120</h4>
									<p>Fortune Refined Sunflower Cooking Oil 1L</p>
									<!-- Add to Cart -->
									<a href="#" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>

							<!-- Single gallery Item Start -->
							<div
								class="col-9 col-sm-2 col-md-3 single_gallery_item women wow fadeInUpBig"
								data-wow-delay="0.2s">
								<!-- Product Image -->
								<div class="product-img">
									<img src="<c:url value="/resources/images/tp6.png" />" alt="">
									<div class="product-quicview">
										<a href="#" data-toggle="modal" data-target="#quickview"><i
											class="ti-plus"></i></a>
									</div>
								</div>
								<!-- Product Description -->
								<div class="product-description">
									<h4 class="product-price">Starting from Rs.599</h4>
									<p>Buy kids wear and dresses for boy and girls age
										(2+12).Wide range of options available.</p>
									<!-- Add to Cart -->
									<a href="cart.jsp" class="add-to-cart-btn">ADD TO CART</a>
								</div>
							</div>


						</div>
					</div>
				</section>
				</div>
			</div>
			
			
</body>
</html>