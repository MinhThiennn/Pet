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
<script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.12/dist/sweetalert2.all.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.12/dist/sweetalert2.min.css
" rel="stylesheet">
</head>
<body  onload="check2(${check})">
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />

	<div class="container panel-body">
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<form acction="/Fami/cart/thanhToan/${item.id}">
					<table class="table table-striped">
						<thead>
							<tr>
							<th style="width: 1%">STT</th>
							<th style="width: 55%">Hình ảnh</th>
							<th style="width: 20%">Giá</th>
							<th style="width: 14%">Số lượng</th>
							<th style="width: 10%">Tổng</th>
							<th style="width: 1%"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${items}" varStatus="status">
								<tr>
									<td>${status.index + 1}</td>
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
									<td class="text-center"><fmt:formatNumber
											value="${item.product.price * item.quantity}" type="currency"
											maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
								<td class="actions"><a type="button"
								href="/Fami/cart-tt/remove/${item.id}"
								class="btn btn-danger btn-sm">Remove<i class="fa fa-trash-o"></i>
							</a></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot >
					<tr class="visible-xs">
						<td class="text-center"><strong></strong></td>
					</tr>
					<tr>
						<td><a href="/Fami/cart" class="btn btn-warning"><i
								class="fa fa-angle-left"></i>Trở về giỏ hàng</a></td>
						<td colspan="4" class="hidden-xs"></td>
								<td class="fa fa-angle-right" align="left"><strong>
										<h3>
											Total :
											<c:if test="${empty items}">0₫</c:if>
											<c:if test="${!empty items}">
											<fmt:formatNumber value="${thanhTien}" type="currency"
												maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫
												</c:if>
										</h3>
								</strong></td>
							</tr>
						</tfoot>

					</table>
				</form>
			</article>
			<aside class="col-sm-3">
				<form action="cart-tt" method="post">
					<div class="form-group">
					<c:if test="${!empty items}">
						<label for="exampleInputEmail1">Email:</label> <input type="email"
							class="form-control" id="exampleInputEmail1" placeholder="Email" name="email" value="${user.email}">
							</c:if>
								<c:if test="${empty items}">
								<label for="exampleInputEmail1">Email:</label> <input type="email"
							class="form-control" id="exampleInputEmail1" placeholder="Email" name="email">
							</c:if>
					</div>
					<div class="form-group">
					<c:if test="${!empty items}">
						<label for="exampleInputPassword1">Địa Chỉ:</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Địa Chỉ" name="address" value="${user.address}">
								</c:if>
								<c:if test="${empty items}">
								<label for="exampleInputPassword1">Địa Chỉ:</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Địa Chỉ" name="address">
							</c:if>
								
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">SĐT :</label> 
						<c:if test="${!empty items}">
						<input type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Số điện thoại" name="phone"  value="${user.sdt}">
							</c:if>
						<c:if test="${empty items}">
							<input type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Số điện thoại" name="phone">
							</c:if>
					</div>
					<button class="btn btn-danger">Thanh toán</button>
				</form>
			</aside>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
	function alert() {
		Swal.fire(
				  'Thanh toán thành công!',
				  'Cảm ơn bạn đã mua hàng tại PET SHOP !',
				  'success'
				)
	}
	function check2(u){
        if(u == true){
            $(alert()).modal("show");
        }
    }
	</script>
</body>
</html>