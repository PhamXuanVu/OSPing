<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<header class="card-header">
						<h4 class="card-title mt-2">Tài khoản của tôi</h4>
					</header>
					<article class="card-body">
						<form class="m-auto"
							action="${pageContext.request.contextPath}/user/form-update-user/${nguoiDung.getId() }"
							method="POST">
							<div class="col form-group">
								<label>Họ Tên đệm </label> <input name="hoTenDem" type="text"
									class="form-control" placeholder=""
									value="${nguoiDung.hoTenDem }">
							</div>
							<div class="col form-group">
								<label>Tên</label> <input name="ten" type="text"
									class="form-control" placeholder="" value="${nguoiDung.ten }">
							</div>
							<div class="col form-group">
								<label>Số điện thoại</label> <input name="soDienThoai"
									type="text" class="form-control" placeholder=""
									value="${nguoiDung.soDienThoai }">
							</div>
							<div class="col form-group">
								<label>Địa chỉ </label> <input name="diaChi" type="text"
									class="form-control" placeholder=""
									value="${nguoiDung.diaChi }">
							</div>
							<div class="col form-group">
								<button type="submit" class="btn btn-success btn-block">
									Cập nhật</button>
							</div>
						</form>
					</article>

				</div>
			</div>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>