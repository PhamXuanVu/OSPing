<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.www.repository.HoaDonRepository"%>
<%@page import="com.www.entity.HoaDon"%>
<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
table {
	width: 100%;
	border-collapse: collapse;
}

.cart-info {
	display: flex;
	flex-wrap: wrap;
}

th {
	text-align: left;
	padding: 5px;
	color: #FFF;
	background: #7fad39;
	font-weight: normal;
}

td {
	padding: 10px 5px;
}

td input {
	width: 50px;
	height: 30px;
	padding: 5px;
}

td a {
	color: #ff523b;
	font-size: 12px;
}

.total-price {
	display: flex;
	justify-content: flex-end;
}

.total-price table {
	border-top: 3px solid #ff523b;
	max-width: 350px;
}

td:last-child {
	text-align: right;
}

th:last-child {
	text-align: right;
}
</style>
<title>Thanh toán</title>
</head>
<body>
	<c:url var="homePageUrl" value="/" />
	<div class="container">
		<jsp:include page="layout/header.jsp" />
			<div class="row">
				<div class="col-12">
					<div class="alert alert-success" role="alert">Đặt hàng thành
						công. Tiếp tục mua hàng nào.</div>
				</div>
			</div>
		<form class="m-auto"
			action="${pageContext.request.contextPath}/gioHang/pay" method="POST"
			enctype="application/x-www-form-urlencoded">
			<input name="nguoiDungId" type="hidden" value="${nguoiDung.id}" />
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<address>
						<strong name="">${nguoiDung.getHoTenDem()}
							${nguoiDung.getTen()}</strong> <br name="diaChi">
						${nguoiDung.getDiaChi()} <br>
						<p name="soDienThoai">${nguoiDung.getSoDienThoai()}</p>
					</address>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 text-right date">
					<p>
						<em><%=new Date()%></em>
					</p>
					<p>
						<em>Mã hóa đơn #: 34522677W</em>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="text-center">
					<h1>HÓA ĐƠN</h1>
				</div>
				<div class="">
					<table class="">
						<tr>
							<th>Sản phẩm</th>
							<th></th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Tổng</th>
						</tr>
						<c:forEach items="${chiTietHoaDon}" var="chiTietHoaDon">
							<tr>
								<td>
									<div class="cart-info">
										<div>
											<p name="tenSanPham">${chiTietHoaDon.tenSanPham}</p>
										</div>
									</div>
								</td>
								<td>										
											${chiTietHoaDon.mauSac}
												,
											${chiTietHoaDon.kichCo}
									</td>
								<td><input name="soLuong" type="number"
									value="${chiTietHoaDon.soLuong}" disabled /></td>
								<td name="donGia">${chiTietHoaDon.getDonGiaFormat()}</td>
								<td>${chiTietHoaDon.getDonGiaDaCongFormat()}</td>
							</tr>
						</c:forEach>
					</table>
					<div class="total-price">
						<table>
							<tr>
								<td>Tổng tiền hàng</td>
								<td>${tongTienHoaDon}</td>
							</tr>
							<tr>
								<td>Phí vận chuyển</td>
								<td>0 VND</td>
							</tr>
							<tr>
								<td>Giảm giá</td>
								<td>0 VND</td>
							</tr>
							<tr>
								<td>Tổng tiền thanh toán</td>
								<td>${tongTienHoaDon}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="layout/footer.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>