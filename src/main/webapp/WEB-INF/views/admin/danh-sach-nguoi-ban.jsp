<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
</head>
<body>
	<c:url var="addSP" value="/danhmuc/form-add-san-pham" />
	<div class="container">
		<div class="row">
			<div class="col-12">
				<jsp:include page="../layout/header.jsp" />
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<jsp:include page="../layout/sidebar-admin.jsp" />
			</div>
			<div class="col-8">
				<button type="button" class="btn btn-primary">
					<a style="text-decoration: none" class="link-light" href="${pageContext.request.contextPath }/danhmuc/form-add-san-pham/${danhMucId}">Thêm sản phẩm</a>
				</button>
				<table class="table" style="text-align: center;">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Tên cửa hàng</th>
							<th scope="col">Họ tên đệm</th>
							<th scope="col">Tên</th>
							<th scope="col">Số điện thoại</th>
							<th scope="col">Địa chỉ</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${nguoiBan}" var="nguoiBan">
							<tr>
								<th>${nguoiBan.id}</th>
								<td>${nguoiBan.cuaHang.tenCuaHang}</td>
								<td>${nguoiBan.hoTenDem}</td>
								<td>${nguoiBan.ten}</td>
								<td>${nguoiBan.soDienThoai}</td>
								<td>${nguoiBan.diaChi}</td>
								<td>
									<div class="col">
										<button type="button" class="btn btn-outline-warning">
											<a style="text-decoration: none" class="link-warning"
												href="<%-- ${pageContext.request.contextPath }/danhmuc/update/${sp.getSanPhamId() } --%>">Sửa</a>
										</button>
									</div>
									<div class="col">
										<button type="button" class="btn btn-outline-danger">
											<a style="text-decoration: none" class="link-danger"
												href="<%-- ${pageContext.request.contextPath }/danhmuc/delete/${sp.getSanPhamId()} --%>"
												onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
										</button>
									</div>
								</td>

							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>