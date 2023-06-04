<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Poly -->
<link href="../Asm-TaiNguyen/css/sanpham.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">men's shoes fashion</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">Suspendisse quos? Tempus cras iure temporibus? Eu laudantium cubilia sem sem! Repudiandae et! Massa senectus enim minim sociosqu delectus posuere.</p>
						<h4 class="price">current price: <span>$180</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5>
						<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="row">
			<div
				class="col-lg-12 bg-primary p-2 text-white mt-2 text-center text-capitalize">
				product details page with nav-pills</div>
		</div>
		<div class="row mt-4">
			<div class="col-lg-1 text-center">
				<ul class="nav nav-tabs row text-center pro-details" id="myTab"
					role="tablist">
					<li class="nav-item col-lg-12 mb-2"><img
						class="img-fluid active h-100"
						src="https://pbs.twimg.com/media/ENktSOKU0AA9Y-6.jpg"
						id="home-tab" data-toggle="tab" href="#home" role="tab"
						aria-controls="home" aria-selected="true" /></li>
					<li class="nav-item col-lg-12 mb-2"><img
						class="img-fluid h-100" id="profile-tab" data-toggle="tab"
						href="#profile" role="tab" aria-controls="profile"
						aria-selected="false"
						src="https://pbs.twimg.com/media/ENktSOTUEAELNMN.jpg" /></li>
					<li class="nav-item col-lg-12 mb-2">
						<div style="height: 50px">
							<img class="img-fluid h-100"
								src="https://pbs.twimg.com/media/ENktSONUEAAm6k1.jpg"
								id="contact-tab" data-toggle="tab" href="#contact" role="tab"
								aria-controls="contact" aria-selected="false" />
						</div>
					</li>
					<li class="nav-item col-lg-12 mb-2"><img
						class="img-fluid h-100"
						src="https://pbs.twimg.com/media/EOYIp0FUYAA0uM1?format=jpg&name=360x360"
						id="product-tab" data-toggle="tab" href="#product" role="tab"
						aria-controls="product" aria-selected="false" /></li>
					<li class="nav-item col-lg-12 mb-2"><img
						class="img-fluid h-100"
						src="https://pbs.twimg.com/media/EOYIp0DUUAA29Ft?format=jpg&name=small"
						id="productTwo-tab" data-toggle="tab" href="#productTwo"
						role="tab" aria-controls="productTwo" aria-selected="false" /></li>
					<li class="nav-item col-lg-12 mb-2"><img
						class="img-fluid h-100"
						src="https://pbs.twimg.com/media/EOYIp0JVUAANGFD?format=jpg&name=small"
						id="productThree-tab" data-toggle="tab" href="#productThree"
						role="tab" aria-controls="productThree" aria-selected="false" /></li>
				</ul>
			</div>
			<div class="col-lg-4 text-center border-right border-secondery">
				<div
					class="tab-content row h-100 d-flex justify-content-center align-items-center"
					id="myTabContent">
					<div class="tab-pane fade show active col-lg-12" id="home"
						role="tabpanel" aria-labelledby="home-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/ENktSOKU0AA9Y-6.jpg" />
					</div>
					<div class="tab-pane fade col-lg-12" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/ENktSOTUEAELNMN.jpg" />
					</div>
					<div class="tab-pane fade col-lg-12" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/ENktSONUEAAm6k1.jpg" />
					</div>
					<div class="tab-pane fade col-lg-12" id="product" role="tabpanel"
						aria-labelledby="product-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/EOYIp0FUYAA0uM1?format=jpg&name=360x360" />
					</div>
					<div class="tab-pane fade col-lg-12" id="productTwo"
						role="tabpanel" aria-labelledby="productTwo-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/EOYIp0DUUAA29Ft?format=jpg&name=small" />
					</div>
					<div class="tab-pane fade col-lg-12" id="productThree"
						role="tabpanel" aria-labelledby="productThree-tab">
						<img class="img-fluid"
							src="https://pbs.twimg.com/media/EOYIp0JVUAANGFD?format=jpg&name=small" />
					</div>
				</div>
			</div>

		</div>
	</div>
<jsp:include page="footer.jsp" />




	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>