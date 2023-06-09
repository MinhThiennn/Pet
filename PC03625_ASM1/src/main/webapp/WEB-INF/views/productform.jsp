<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
		<form:form action="/Fami/product" modelAttribute="item"
			enctype="multipart/form-data" method="post">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-sm-6 form-group">
							<form:input path="id" placeholder="Id" hidden="hidden" />
							<br> Name:
							<form:input path="name" placeholder="Name" class="form-control" />
							<br> Price:
							<form:input path="price" placeholder="Price" class="form-control" />
							<br> Price:
							<form:input path="quantity" placeholder="Quantity"
								class="form-control" />
							<br> Category:
							<form:select path="category.id" class="form-control">
								<form:option value="">Select Category</form:option>
								<form:options items="${list_category}" />
							</form:select>
							<br> Image: <input type="file" name="photo_file"
								value="${item.image }">
						</div>
						<div class="col-sm-6 form-group">
							<img src="/images/${item.image }">
						</div>
					</div>
					${message }
					<button formaction="/Fami/product/create" class="btn btn-danger">Create</button>
					<button formaction="/Fami/product/update" class="btn btn-danger">Update</button>
					<button formaction="/Fami/product/form" class="btn btn-danger">Reset</button>
				</div>
			</div>
		</form:form>
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