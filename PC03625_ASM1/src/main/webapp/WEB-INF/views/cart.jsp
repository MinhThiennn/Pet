<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/cart.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />

	CART
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
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
								<p>Quis aute iure reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit
									amet.</p>
							</div>
						</div>
					</td>
					<td>${item.product.price } </td>
					<td><input type="number"
						class="form-control text-center" name="quantity" value="1"></td>
					<td data-th="Subtotal" class="text-center">${item.product.price }</td>
					<td class="actions" data-th="">
						<button class="btn btn-info btn-sm">
							<i class="fa fa-refresh"></i>
						</button>
						<button class="btn btn-danger btn-sm">
							<i class="fa fa-trash-o"></i>
						</button>
					</td>
				</tr>
 				</c:forEach>
			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>Total 1.99</strong></td>
				</tr>
				<tr>
					<td><a href="#" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
					<td><a href="#" class="btn btn-success btn-block">Checkout
							<i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
		</table>
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
