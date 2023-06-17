<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/product.css" rel="stylesheet" />
</head>
<body>
	<div class="container" style="border: 1px solid black;">
		<hr>
		<div class="row">
			<div class="col-lg-10">
				<form action="product">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Bạn muốn tìm kiếm những gì ?" name="keywords"
							value="${keywords}"> <span class="input-group-addon">
							<button style="width: 100%; height: 100%"
								class="glyphicon glyphicon-search"></button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<hr>
		<form action="adminlichsu/update">
			<table class="table table-striped">
				<thead>
					<tr class="row-name">
						<th></th>
						<th class="text-center">Name</th>
						<th class="text-center">CreateDate</th>
						<th class="text-center">Status</th>
						<th class="text-center">Address</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listorder }">
						<tr>
							<td class="text-center"><input value="${item.id }"
								hidden="hidden" name="id"></td>
							<td class="text-center">${item.account.fullname }</td>
							<td class="text-center"><fmt:formatDate
									value="${item.createDate}" pattern="dd/MM/yyyy"
									var="formattedDate" /> ${formattedDate}</td>
							<td class="text-center"><select name="status"
								onblur="this.form.submit()">
									<option value="Đang giao"
										>${item.status =='Đang giao' ? 'selected' :'' }</option>
									<option value="Đã giao"
										${item.status =='Đã giao' ? 'selected' :'' }>Đã giao</option>
									<option value="Đã thanh toán"
										${item.status =='Đã thanh toán' ? 'selected' :'' }>Đã
										thanh toán</option>
									<option value="Đã hủy"
										${item.status =='Đã hủy' ? 'selected' :'' }>Đã hủy</option>
									<option value="Chờ Xử lý"
										${item.status =='Chờ xử lý' ? 'selected' :'' }>Chờ Xử
										lý</option>
							</select></td>
							<td class="text-center">${item.address }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>