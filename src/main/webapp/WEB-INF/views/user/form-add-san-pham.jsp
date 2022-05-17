<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<jsp:include page="../layout/header.jsp" />
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<jsp:include page="../layout/sidebar-user.jsp" />
			</div>
			<div class="col-8">
				<div class="card">
					<header class="card-header">
						<h4 class="card-title mt-2">Thêm sản phẩm</h4>
					</header>
					<article class="card-body">
						<form class="m-auto"
							action="${pageContext.request.contextPath}/user/form-add-san-pham/${nguoiDung.getId()}"
							method="POST" enctype="application/x-www-form-urlencoded">
							<form:form modelAttribute="danhMucSP" method="get">
								<div class="form-group">
									<form:select path="danhMuc">
										<c:forEach var="danhMuc" items="${danhMuc }">
											<form:option value="${danhMuc.tenDanhMuc }"></form:option>
										</c:forEach>
									</form:select>

									<div class="form-group">
										<label>Tên sản phẩm </label> <input name="tenSanPham"
											type="text" class="form-control" placeholder="">
									</div>
									<div class="form-group">
										<label>Đơn giá</label> <input name="donGia" type="number"
											class="form-control" placeholder=" ">
									</div>
								</div>
								<div class="form-group">
									<label>Số lương</label> <input name="soLuong" type="text"
										class="form-control" placeholder="">
								</div>
								<div class="form-group">
									<label>Mô tả</label> <input name="moTa" type="text"
										class="form-control" placeholder="">
								</div>
								
								<div class="form-group">
								<label>Màu sắc</label> <br />
									<input type="checkbox" name="mauSac" value="Đỏ" /> Đỏ &nbsp<input
										type="checkbox" name="mauSac" value="Xanh Lá" /> Xanh Lá &nbsp<input
										type="checkbox" name="mauSac" value="Xanh Navy" /> Xanh Navy &nbsp
										<input
										type="checkbox" name="mauSac" value="Xanh Dương" /> Xanh Dương &nbsp
										<input
										type="checkbox" name="mauSac" value="Trắng" /> Trắng &nbsp
										<input
										type="checkbox" name="mauSac" value="Đen" /> Đen &nbsp
										<input
										type="checkbox" name="mauSac" value="Tím" /> Tím &nbsp
										<input
										type="checkbox" name="mauSac" value="Vàng" /> Vàng &nbsp
										<input
										type="checkbox" name="mauSac" value="Cam" /> Cam &nbsp
										<input
										type="checkbox" name="mauSac" value="" /> NULL &nbsp
										<br /> 
								</div>
								
								<div class="form-group">
								<label>Kích cở (quần,áo,...)</label><br />
									<input type="checkbox" name="kichCo" value="Java" /> S &nbsp<input
										type="checkbox" name="kichCo" value="M" /> M &nbsp<input
										type="checkbox" name="kichCo" value="L" /> L &nbsp
										<input
										type="checkbox" name="kichCo" value="XL" /> XL &nbsp
										<input
										type="checkbox" name="kichCo" value="" /> NULL &nbsp
										<br /> 
								</div>
								
								<div class="form-group">
								<label>Kích cở (giày,dép,...)</label><br />
									<input type="checkbox" name="kichCo" value="35" /> 35 &nbsp<input
										type="checkbox" name="kichCo" value="36" /> 36 &nbsp<input
										type="checkbox" name="kichCo" value="37" /> 37 &nbsp
										<input
										type="checkbox" name="kichCo" value="38" /> 38 &nbsp
										<input
										type="checkbox" name="kichCo" value="39" /> 39 &nbsp
										<input
										type="checkbox" name="kichCo" value="40" /> 40 &nbsp
										<input
										type="checkbox" name="kichCo" value="41" /> 41 &nbsp
										<input
										type="checkbox" name="kichCo" value="42" /> 42 &nbsp
										<input
										type="checkbox" name="kichCo" value="" /> NULL &nbsp
										
										<br /> 
								</div>
								
								<div class="form-group">
									<label>Hình ảnh </label><input name="hinhAnh" type="file"
										class="form-control" placeholder="">
								</div>
								
								<div class="form-group">
									<button type="submit" class="btn btn-success btn-block">
										Thêm</button>
								</div>
							</form:form>
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