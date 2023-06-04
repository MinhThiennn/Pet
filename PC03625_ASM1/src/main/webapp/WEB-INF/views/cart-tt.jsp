<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap -->
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
			<article class="col-sm-6">
				<table class="table table-striped">
					<thead>
						<tr>
							<!-- 									<th>Remove</th> -->
							<th>Hình ảnh</th>
							<th>Tên sản phẩm</th>
							<th>số lượng</th>
							<th>giá</th>
							<th>tổng</th>
						</tr>
					</thead>
					<tbody>
						<%-- 								<c:forEach var="cartDetail" items="${sessionScope.cart.detail}"> --%>
						<tr id="tr-${cartDetail.value.masp}">
							<td><img alt=""
								src="../Asm-TaiNguyen/images/cat-ve-sinh-huong-ca-phe.webp" width="50px">
							</td>
							<td>Cát vệ sinh hương cà phê</td>
							<td><input id="slMua-${cartDetail.value.masp}"
								onchange="updateCart('${cartDetail.value.masp}')" type="text"
								class="input-mini" value="${cartDetail.value.slMua}"></td>
							<td><fmt:formatNumber type="text" maxFractionDigits="3"
									value="${cartDetail.value.giasp}" />300000</td>
							<td><span id="totalSP-${cartDetail.value.masp}"> <fmt:formatNumber
										type="text" maxFractionDigits="3"
										value="${cartDetail.value.giasp * cartDetail.value.slMua}" />
							</span>0.0</td>
						</tr>
						<input type="hidden" id="giaSP-${cartDetail.value.masp}"
							value="${cartDetail.value.giasp}" />
						<!-- 								</c:forEach> -->
						<tr id="tr-${cartDetail.value.masp}">
							<td><img alt=""
								src="../Asm-TaiNguyen/images/dung-cu-lam-sach-long-cho-meo.webp" width="50px">
							</td>
							<td>Dụng cụ làm sạch lông chó mèo</td>
							<td><input id="slMua-${cartDetail.value.masp}"
								onchange="updateCart('${cartDetail.value.masp}')" type="number"
								class="input-mini" value="${cartDetail.value.slMua}"></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${cartDetail.value.giasp}" />150000</td>
							<td><span id="totalSP-${cartDetail.value.masp}"> <fmt:formatNumber
										type="number" maxFractionDigits="3"
										value="${cartDetail.value.giasp * cartDetail.value.slMua}" />
							</span>0.0</td>
						</tr>
						<input type="hidden" id="giaSP-${cartDetail.value.masp}"
							value="${cartDetail.value.giasp}" />
						<!-- 								</c:forEach> -->
					</tbody>
				</table>
			</article>
			<aside class="col-sm-6">
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Email:</label> <input type="email"
							class="form-control" id="exampleInputEmail1" placeholder="Email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Địa Chỉ:</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Địa Chỉ">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">SĐT :</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Số điện thoại">
					</div>
					<button type="submit" class="btn btn-success">Thanh Toán</button>
				</form>
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