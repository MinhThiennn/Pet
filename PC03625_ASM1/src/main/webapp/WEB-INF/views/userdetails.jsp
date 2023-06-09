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
	<div class="container">
		<div class="row">
			<div class="col-lg-10">
				<form action="#">
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
		<div class="row userMain">
       <div class="col-md-3 col-sm-4">
           <div class="userBlock">
               <div class="backgrounImg">
                   <img src="https://img.freepik.com/premium-vector/social-network-connection-concept_38133-143.jpg" >
               </div>
               <div class="userImg">
                   <img src="https://image.ibb.co/es4AG7/author4.jpg">
               </div>
               <div class="userDescription">
                   <h5>Tom Smith</h5>
                   <p>Newyork, USA</p>
                  
                   
                    <div class="followrs">
                       <span class="number">137</span>
                        <span>Followers</span>
                    </div>
                    <a href="">
                        <button class="btn">Follow</button>
                    </a>
               </div>
              
           </div>
       </div>
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