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

	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	
	<div class="container-fluid">
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3">
						<h2 class="text-center pull-left" style="padding-left: 30px;">
							<span class="glyphicon glyphicon-list-alt"> </span> HISTORY
						</h2>
					</div>
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="col-xs-12 col-md-4">
								<label> Search </label>
								<div class="form-group">
									<div class="input-group">
										<input type="text" class="form-control input-md" name="search">
										<div class="input-group-btn">
											<button type="button" class="btn btn-md btn-warning">
												<span class=" glyphicon glyphicon-search"></span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">#ID</th>
							<th class="text-center">Name</th>
							<th class="text-center">CreateDate</th>
							<th class="text-center">Status</th>
							<th class="text-center">Address</th>
							<th class="text-center">Chi tiết</th>
							<th class="text-center"></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="item" items="${listorder }">
							<tr>
								<td class="text-center">${item.id }</td>
								<td class="text-center">${item.account.fullname }</td>
								<td class="text-center">${item.createDate }</td>
								<td class="text-center">${item.status }</td>
								<td class="text-center">${item.address }</td>
								<td class="text-center"><a href="chitiet/${item.id }" class="btn btn-danger">Xem</a></td>
								<td class="text-center"><a href="chitiet/remove/${item.id }" class="btn btn-warning">Hủy</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>