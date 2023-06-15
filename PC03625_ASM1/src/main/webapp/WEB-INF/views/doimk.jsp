<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- jQuery -->
<script src="../Asm-TaiNguyen/js/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="../Asm-TaiNguyen/css/bootstrap.min.css" rel="stylesheet" />
<script src="../Asm-TaiNguyen/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/dangki.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="row main">

			<div class="panel-heading">
				<div class="panel-title col-lg-offset-5">

					<a href="home"><img src="../Asm-TaiNguyen/images/logo.webp"
						class="img-responsive" alt="" /> </a>
				</div>
				<hr>
			</div>
			
			<div class="main-login main-center">
				<form action="/Fami/doimk" method="post">
					
					<div class="form-group">
						Old Password:<input type="password" name="psOld"/><br>
						<input type="hidden" name = "user" value="user.username">
					</div>
					
					<div class="form-group">
						New Password:<input type="password" name="psNew"/><br>
					</div>

					<div class="form-group">
						Confirm Password:<input type="password" name="psCf"/><br>
					</div>
						${message}
					<div class="form-group ">
						<input type = "submit" value="change"
							class="btn  btn-lg btn-block login-button color"/>
					</div>
					<div class="login-register">
						<a href="dangnhap">Login</a>
					</div>
					
				</form>
			</div>

		</div>
	</div>
</body>
</html>