<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/admin.css" rel="stylesheet" />
</head>
<div class="container">
	<div class="row">
		<div id="wrapper">



			<!-- Sidebar -->
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav" style="margin-left: 0;">
					<li class="sidebar-brand"><a href="#menu-toggle"
						id="menu-toggle" style="margin-top: 20px; float: right;"> <i
							class="glyphicon glyphicon-th-list" style="font-size: 20px !Important;" aria-hidden="true"
							aria-hidden="true"> </i>
					</a></li>
					<li><a href="#"><i class="fa fa-sort-alpha-asc "
							aria-hidden="true"> </i> <span style="margin-left: 10px;">Section</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-play-circle-o "
							aria-hidden="true"> </i> <span style="margin-left: 10px;">
								Section</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-puzzle-piece"
							aria-hidden="true"> </i> <span style="margin-left: 10px;">
								Section</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-font" aria-hidden="true">
						</i> <span style="margin-left: 10px;"> Section</span>
					</a></li>
					<li><a href="#"><i class="fa fa-info-circle "
							aria-hidden="true"> </i> <span style="margin-left: 10px;">Section
						</span> </a></li>
					<li><a href="#"> <i class="fa fa-comment-o"
							aria-hidden="true"> </i> <span style="margin-left: 10px;">
								Section</span>
					</a></li>
				</ul>
			</div>
			<!-- /#sidebar-wrapper -->

			<!-- Page Content -->
			<div id="page-content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12"></div>
					</div>
				</div>
			</div>






			<!-- /#page-content-wrapper -->

		</div>
		<!-- /#wrapper -->






	</div>
</div>
<jsp:include page="footer.jsp" />

<script>
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});
</script>

<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
	crossorigin="anonymous"></script>
</body>
</html>