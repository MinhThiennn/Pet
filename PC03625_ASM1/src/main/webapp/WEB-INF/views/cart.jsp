<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<div class="container panel-body">
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Remove</th>
							<th>Image</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<%-- 								<c:forEach var="cartDetail" items="${sessionScope.cart.detail}"> --%>
						<tr id="tr-${cartDetail.value.masp}">
							<td><button onclick="removeSP('${cartDetail.value.masp}')"
									class="btn btn-danger" type="button">X</button></td>
							<td></td>
							<td>${cartDetail.value.tensp}</td>
							<td><input id="slMua-${cartDetail.value.masp}"
								onchange="updateCart('${cartDetail.value.masp}')" type="number"
								class="input-mini" value="${cartDetail.value.slMua}"></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${cartDetail.value.giasp}" /></td>
							<td><span id="totalSP-${cartDetail.value.masp}"> <fmt:formatNumber
										type="number" maxFractionDigits="3"
										value="${cartDetail.value.giasp * cartDetail.value.slMua}" />
							</span></td>
						</tr>
						<input type="hidden" id="giaSP-${cartDetail.value.masp}"
							value="${cartDetail.value.giasp}" />
						<!-- 								</c:forEach> -->
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><strong id="tongTien"><fmt:formatNumber
										type="number" maxFractionDigits="3"
										value="${sessionScope.cart.tongtien}" /></strong></td>
						</tr>
					</tbody>
				</table>
				<div class="col-sm-12">
					<button class="thanhToan">Thanh Toán</button>
				</div>
			</article>
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
