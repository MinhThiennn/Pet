<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/lichsu.css" rel="stylesheet" />
<script src="../Asm-TaiNguyen/js/lichsu.js"></script>
</head>
<body>

	<div class="container-fluid">
		<div class="panel panel-success">

			<div class="panel-body table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">#ID</th>
							<th class="text-center">Name</th>
							<th class="text-center">Image</th>
							<th class="text-center">Price</th>
							<th class="text-center">Quantity</th>
							<th class="text-center">Tổng</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="item" items="${orderdetail }">
							<tr>
								<td class="text-center">${item.id }</td>
								<td class="text-center">${item.product.name }</td>
								<td class="text-center"><img src="/images/${item.product.image }" height="50px"></td>
								<td class="text-center">${item.price }</td>
								<td class="text-center">${item.quantity }</td>
								<td class="text-center">${item.tong }</td>
								<td class="text-center"><a href="/Fami/lichsu" class="btn btn-danger">Quay lại</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>