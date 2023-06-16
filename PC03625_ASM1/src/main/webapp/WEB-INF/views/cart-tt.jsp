<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />

	<div class="container panel-body">
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<form acction="/Fami/cart/thanhToan/${item.id}">
					<table class="table table-striped">
						<thead>
							<tr>
								<!-- 									<th>Remove</th> -->
								<th>â<th>
								<th>Hình ảnh</th>
								<th>Giá</th>
								<th>Số lượng</th>
								<th>Tổng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${cartdetil }">
								<tr>
									<td>#${item.product.id}</td>
									<td data-th="Product">
										<div class="row">
											<div class="col-sm-2 hidden-xs">
												<img src="/images/${item.product.image }" alt="..."
													class="img-responsive" />
											</div>
											<div class="col-sm-10">
												<h4 class="nomargin">${item.product.name }</h4>
												<p>Quis aute iure reprehenderit</p>
											</div>
										</div>
									</td>
									<td class="col-sm-2 hidden-xs"><fmt:formatNumber
											value="${item.product.price}" type="currency"
											maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
									<td><input type="number" class="form-control text-center"
										name="quantity" disabled="disabled" value="${item.quantity }"
										onblur="this.form.submit()"></td>
									<%-- 						<td data-th="Subtotal" class="text-center">${item.product.price }</td> --%>
									<td class="text-center"><fmt:formatNumber
											value="${item.product.price * item.quantity}" type="currency"
											maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
									
								</tr>



							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td class="fa fa-angle-right"><strong>
										<h3>
											Total :
											<fmt:formatNumber value="${thanhTien}" type="currency"
												maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />
											₫
										</h3>
								</strong></td>
							</tr>
						</tfoot>

					</table>
				</form>
			</article>
			<aside class="col-sm-3">
				<form action="thanhtoan/bill" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Email:</label> <input type="email"
							class="form-control" id="exampleInputEmail1" placeholder="Email" name="email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Địa Chỉ:</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Địa Chỉ" name="address">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">SĐT :</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Số điện thoại" name="phone">
					</div>
					<button class="btn btn-danger">Thanh toán</button>
				</form>
			</aside>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>