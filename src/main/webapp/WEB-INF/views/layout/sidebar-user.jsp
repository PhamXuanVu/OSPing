
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<c:url var="cssHeaderAdmin" value="/css/styles.css" />
<link rel="stylesheet" href="${cssHeaderAdmin }" />
</head>
<body>
	<c:url var="danhMucAd" value="/danhmuc/" />
	<c:if test="${nguoiDung.cuaHang.tenCuaHang == null}">
		Bạn chưa có cửa hàng
		<a class="navbar-brand"
			href="${pageContext.request.contextPath }/user/form-tao-cua-hang/${nguoiDung.getId()}">Tạo
			cửa hàng ngay</a>
	</c:if>
	<c:if test="${nguoiDung.cuaHang.tenCuaHang != null}">
		<div class="d-flex" id="wrapper">
			<!-- Sidebar-->
			<div class="border-end bg-white" id="sidebar-wrapper">
				<div class="sidebar-heading border-bottom bg-light">${nguoiDung.cuaHang.tenCuaHang}</div>
				<div class="list-group list-group-flush">
					<a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="${pageContext.request.contextPath }/user/sanphamcuahang/${nguoiDung.cuaHang.cuaHangId}">Sản
						phẩm</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="${pageContext.request.contextPath }/user/hoa-don-cua-hang/${nguoiDung.cuaHang.cuaHangId}">Hóa đơn</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="#!">Thống kê</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="#!">Vận chuyển</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="${pageContext.request.contextPath }/user/form-update-cua-hang/${nguoiDung.cuaHang.cuaHangId}">Cửa Hàng</a>


				</div>

			</div>
		</div>
	</c:if>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>