<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/nguoidung.css" rel="stylesheet" />
</head>
<body>
	
	<h2 style="color: #448aff; text-align: center;">USERS</h2>
	<hr>
	 <table class="table table-striped">
		<div class="dropdown">
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="Bạn muốn tìm kiếm những gì ?"> <span
					class="input-group-addon"><span
					class="glyphicon glyphicon-search"></span></span>
			</div>
		</div>
		<thead>
			<tr class="row-name">
				<th>Username</th>
				<th>Password</th>
				<th>Email</th>
				<th>Admin</th>
				<th>Fullname</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Activated</th>
				<th>Imgae</th>
				<th>Setting</th>
			</tr>
		</thead>
		<tbody>
			<tr class="row-content">
				<td>Username</td>
				<td>Password</td>
				<td>Email</td>
				<td>Admin</td>
				<td>Fullname</td>
				<td>Phone</td>
				<td>Address</td>
				<td>Activated</td>
				<td>Imgae</td>
				<td><a class="btn btn-danger edit" href="#"
					aria-label="Settings"> <i class="fa fa-trash"
						aria-hidden="true"></i>
				</a> &nbsp <a class="btn btn-info edit" href="#" aria-label="Settings">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
				</a></td>
			</tr>
		</tbody>
	</table>


	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>