package com.www.dto;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class NguoiDungDTO {
	
	@NotEmpty(message = "Họ tên đệm không được để trống")
	private String hoTenDem;
	
	@NotEmpty(message = "Tên không được để trống")
    private String ten;
	
	@Pattern(regexp="((09|03|07|08|05)+([0-9]{8}))", message = "Số điện thoại gồm 10 số, bắt đầu bằng các đầu số: 09, 03, 07, 08, 05")
    private String soDienThoai;
	
	@NotEmpty(message = "Email không được để trống")
	@Email(message = "Email không đúng định dạng")
    private String email;
	
	@NotEmpty(message = "Địa chỉ không được để trống")
    private String diaChi;
	
	@Min(value = 6, message = "Mật khẩu phải từ 6 kí tự trở lên")
    private String matKhau;
	
	@NotEmpty(message = "Tên cửa hàng không được để trống")
	private String tenCuaHang;
	
	@NotEmpty(message = "Địa chỉ lấy hàng không được để trống")
	private String diaChiLayHang;

	public String getHoTenDem() {
		return hoTenDem;
	}

	public void setHoTenDem(String hoTenDem) {
		this.hoTenDem = hoTenDem;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getTenCuaHang() {
		return tenCuaHang;
	}

	public void setTenCuaHang(String tenCuaHang) {
		this.tenCuaHang = tenCuaHang;
	}

	public String getDiaChiLayHang() {
		return diaChiLayHang;
	}

	public void setDiaChiLayHang(String diaChiLayHang) {
		this.diaChiLayHang = diaChiLayHang;
	}

	public NguoiDungDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "NguoiDungDTO [hoTenDem=" + hoTenDem + ", ten=" + ten + ", soDienThoai=" + soDienThoai + ", email="
				+ email + ", diaChi=" + diaChi + ", matKhau=" + matKhau + ", tenCuaHang=" + tenCuaHang
				+ ", diaChiLayHang=" + diaChiLayHang + "]";
	}
	
}
