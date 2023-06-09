<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/product.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-10">
				<form action="product">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Bạn muốn tìm kiếm những gì ?" name="keywords"
							value="${keywords}"> <span class="input-group-addon">
							<button style="width: 100%; height: 100%" class="glyphicon glyphicon-search"></button></span>
					</div>
				</form>
			</div>
		</div>
		<hr>
		<c:forEach var="item" items="${page.content}">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="/images/${item.image }" alt="...">
					<div class="caption text-center">
						<a class="hidden">${item.id }</a> <a class="status" href="#">${item.name }</a>
						<div class="rating">
							<span class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span>
						</div>
						<span class="status">${item.price }₫</span>
						<p>
							<a href="/Fami/product/delete/${item.id}" class="btn btn-danger"
								role="button">Xóa</a> <a href="/Fami/product/edit/${item.id}"
								class="btn btn-warning" role="button">Sửa</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="container">
		<div class="text-center">
			<c:forEach begin="1" end="${page.totalPages}" step="1" var="number">
			<a href="/Fami/product?p=${number-1 }" class="btn btn-danger"><strong>${number }</strong></a>
			</c:forEach>
		</div>
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