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
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Poly -->
<style>
#buy-amount {
	display: flex;
	height: 35px;
}

#buy-amount .minus-btn {
	border-radius: 0px 0px 0px
}

#buy-amount .plus-btn {
	border-radius: 0px 0px 0px
}

#buy-amount button {
	width: 100px;
	height: 20px;
	outline: none;
	background: none;
	cursor: pointer;
}

#buy-amount   a:hover {
	background-color: #8CAAB4;
}

#buy-amount #amount {
	width: 40px;
	text-align: center;
	border: 1px solid black;
}
</style>
<link href="../Asm-TaiNguyen/css/cart.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<hr>
	<div class="container">
		<form action="cart/dathang">
			<table id="cart" class="table table-hover table-condensed">
				<thead>
					<tr>
						<th style="width: 50%">Product</th>
						<th style="width: 10%" class="text-center">Price</th>
						<th style="width: 8%" class="text-center">Quantity</th>
						<th style="width: 22%" class="text-center">Subtotal</th>
						<th style="width: 10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items }">
						<tr>
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
							<td class="text-center"><fmt:formatNumber
									value="${item.product.price}" type="currency"
									maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
							<td><div id="buy-amount">
									<a class="minus-btn btn btn-default"
										href="cart/updatetru/${item.id }">-</a> <input type="text"
										name="amount" id="amount" value="${item.quantity }" min="1"
										max="10"> <a class="plus-btn btn btn-default"
										href="cart/updatecong/${item.id }">+</a>
								</div></td>
							<%-- 						<td data-th="Subtotal" class="text-center">${item.product.price }</td> --%>
							<td class="text-center"><fmt:formatNumber
									value="${item.product.price * item.quantity}" type="currency"
									maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
							<td class="actions"><a type="button"
								href="/Fami/cart/remove/${item.id}"
								class="btn btn-danger btn-sm"> <i class="fa fa-trash-o"></i>
							</a></td>
						</tr>

					</c:forEach>
				</tbody>
				<tfoot>
					<tr class="visible-xs">
						<td class="text-center"><strong></strong></td>
					</tr>
					<tr>
						<td><a href="/Fami/home" class="btn btn-warning"><i
								class="fa fa-angle-left"></i> Tiếp Tục Mua Sắm</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td><a type="button" href="/Fami/cart-tt" class="btn btn-success btn-block">Checkout
								<i class="fa fa-angle-right"></i>
						</a></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
