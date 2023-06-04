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
<link href="../Asm-TaiNguyen/css/index.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<div class="container">
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
			<div class="col-lg-7">
				<h5>Note 8 Pro (Gamma Green, 128 GB) (6 GB RAM)</h5>
				<h3>₹16,766</h3>
				<p>Available offers</p>
				<ul>
					<li class="pb-2"><b>Bank Offer</b> 5% Unlimited Cashback on
						Bank Credit Card <b>T&C</b></li>
					<li><b>Bank Offer</b> 5% Instant Discount on EMI with Bank
						Credit and Debit Cards <b>T&C</b></li>
				</ul>
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