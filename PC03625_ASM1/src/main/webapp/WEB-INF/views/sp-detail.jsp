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
	<header class="header">
		<div class="topbar panel-heading">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-7">
						<ul class="topbar_left hidden-md hidden-sm hidden-xs">
							<li><a href="home" class="welcome_text">Chào mừng
									bạn đến với FamiPet ! </a></li>
							<li><a>Mở cửa: 9h - 21h30, thứ 2 - CN hàng tuần</a></li>
						</ul>
					</div>
					<div class="col-lg-6 col-md-5 col-sm-12 col-xs-12">
						<ul class="topbar_right">
							<li><img src="../Asm-TaiNguyen/images/VI.gif" alt="">
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> Tài khoản</a>
								<ul class="dropdown-menu">
									<li><a href="login">Đăng nhập</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="dangki">Đăng ký thành viên</a></li>
								</ul></li>
							<li><a href="lienhe"
								class="hidden-md hidden-sm hidden-xs"><span
									class="glyphicon glyphicon-map-marker"></span> Hệ thống cửa
									hàng</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="midbar panel-body">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<div class="logo">
							<a href="home" class="logo-wrapper "> <img
								src="../Asm-TaiNguyen/images/logo.webp" alt="logo ">
							</a>
						</div>
					</div>
					<div class="col-lg-5 col-md-5 col-xs-12 col-sm-12">
						<div class="header_search">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Bạn muốn tìm kiếm những gì ?"> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-zoom-in"></span></span>
							</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-4 col-xs-12 col-sm-12 hidden-md hidden-sm hidden-xs">
						<div class="navbar-left ">
							<div class="hotline">
								<span class="glyphicon glyphicon-earphone"></span>
							</div>
							<div class="content_hotline">
								<a href="tel:0919630131">0919630131</a><br> <span>HOTLINE
									MUA HÀNG</span>
							</div>
						</div>
						<div class="navbar-right">
							<div class="hotline">
								<span class="glyphicon glyphicon-shopping-cart"></span>
							</div>
							<div class="content_hotline">
								<a href="#">(0) Sản phẩm</a><br> <span>GIỎI HÀNG</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<nav>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!--Menu-->
					<ul class="nav navbar-nav">
						<li><a href=""><span
								class="glyphicon glyphicon-align-justify"></span> DANH MỤC SẢN
								PHẨM</a></li>
						<li><a href="#">TRANG CHỦ</a></li>
						<li><a href="shopcho">SHOP CHO CHÓ <span
								class="caret"></span></a></li>
						<li><a href="shopmeo">SHOP CHO MÈO <span
								class="caret"></span></a></li>
						<li><a href="tintuc">TIN TỨC <span class="caret"></span></a></li>
						<li class="dropdown"><a href="gioithieu"
							class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="gioithieu">Về chúng tôi</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="lienhe">Liên hệ</a></li>
							</ul></li>
					</ul>
					<!--Menu-->
				</div>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel" data-pause="hover" data-interval="3000">
			<!-- Indicators -->
			<!-- <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol> -->

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../Asm-TaiNguyen/images/slider_2.webp" alt="...">
				</div>
				<div class="item">
					<img src="../Asm-TaiNguyen/images/slider_3.webp" alt="...">
				</div>
				<div class="item">
					<img src="../Asm-TaiNguyen/images/slider_4.webp" alt="...">
				</div>
				<div class="item">
					<img src="../Asm-TaiNguyen/images/slider_5.webp" alt="...">
				</div>
			</div>
		</div>

		<!-- Controls -->
		<!-- <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a> -->
	</div>
	<div class="container panel-body">
	<div class="poly-sheet row">
			<div class="col-sm-9">
					<section class="header_text sub">
			
				<h4><span>Cát Vệ Sinh Hương Cà Phê</span></h4>
			</section>
			<section class="main-content">
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
								<a href="<c:url value='../Asm-TaiNguyen/images/cat-ve-sinh-huong-ca-phe.webp${product.hinh}' />" class="thumbnail" data-fancybox-group="group1" title="Description 1">
									<img alt="" src="../Asm-TaiNguyen/images/cat-ve-sinh-huong-ca-phe.webp">
								</a>												
							</div>
							<div class="span5">
								<address>
									<strong>Thông Tin Sản Phẩm: Cát vệ sinh cho chó mèo, thơm, sạch</strong> <span>${product.soluong}</span><br>
									<input type="hidden" id="maSP" value="${product.masp}"/>
									<input type="hidden" id="soLuongTrongKho" value="${product.soluong}"/>
								</address>	
								<div class="rating">
										<span class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star-empty"></span>
									</div>								
								<h4><strong>Giá: <fmt:formatNumber type="number" maxFractionDigits="3" value="${product.giasp}" />300.000 đ</strong></h4>
							</div>
							<div class="span5">
								<form class="form-inline">
									<p>&nbsp;</p>
									<label>Số lượng:</label>
									<input id="soLuongMua" type="number" value="1" class="span1" placeholder="1" min="1" max="${product.soluong}">
									<button class="btn btn-inverse" type="button" id="addToCart" > <a href = "thanhtoan">Add to cart</button>
								</form>
								
							</div>							
						</div>
					</div>
				</div>
			</section>
			</div>
		<aside class="col-sm-3">
				<div class="panel-group" id="accordion">
					<!--Category-->
					<div class="panel panel-default">
						<div class="panel-heading" data-toggle="collapse"
							data-parent="#accordion" href="#chungloai">
							<span class="glyphicon glyphicon-th-list"></span> <strong>Thức
								ăn cho chó</strong>
						</div>

						<div id="chungloai" class="list-group panel-collapse collapse in">
							<a href="#" class="list-group-item">Thức ăn <span
								class="badge">10</span></a> <a href="#" class="list-group-item">Sữa
								tắm <span class="badge">7</span>
							</a> <a href="#" class="list-group-item">Phụ kiện <span
								class="badge">3</span></a> <a href="#" class="list-group-item">Y
								tế & Thuốc <span class="badge">21</span>
							</a> <a href="#" class="list-group-item">Đồ dùng <span
								class="badge">14</span></a>
						</div>
					</div>
					<!--/Category-->

					<!--Supplier-->
					<div class="panel panel-default">

						<div class="panel-heading" data-toggle="collapse"
							data-parent="#accordion" href="#nhacungcap">
							<span class="glyphicon glyphicon-list-alt"></span> <strong>Thức
								ăn cho mèo</strong>
						</div>

						<div id="nhacungcap" class="list-group panel-collapse collapse">
							<a href="#" class="list-group-item">Thức ăn</a> <a href="#"
								class="list-group-item">Sữa tắm</a> <a href="#"
								class="list-group-item">Phụ kiện</a> <a href="#"
								class="list-group-item">Y tế & Thuốc</a> <a href="#"
								class="list-group-item">Đồ dùng</a>
						</div>
					</div>
					<!--/Supplier-->

					<!--Special-->
					<div class="panel panel-default">
						<div class="panel-heading" data-toggle="collapse"
							data-parent="#accordion" href="#hangdatbiet">
							<span class="glyphicon glyphicon-star-empty"></span> <strong>Hàng
								đặc biệt</strong>
						</div>

						<div id="hangdatbiet" class="list-group panel-collapse collapse">
							<a href="#" class="list-group-item">BỌT TẮM KHÔ CHO THÚ CƯNG
								SUPER CLEAR AMITAVET 250ML</a> <a href="#" class="list-group-item">Thức
								Ăn Hạt Khô Keos- Thức ăn cho chó mèo</a>
						</div>
					</div>
					<!--/Special-->
				</div>

			</aside>	
			</div>
	</div>
	<footer class="panel row">
		<div class="panel-heading text-center">
			© 2023 FamiPet - Keep Your Pets Happy Everyday | Cre <strong>FamiPet</strong>
		</div>
	</footer>
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>