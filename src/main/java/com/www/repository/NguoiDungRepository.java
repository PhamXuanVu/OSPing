package com.www.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.www.entity.NguoiDung;
import com.www.entity.TaiKhoan;

@Repository
public interface NguoiDungRepository extends CrudRepository<NguoiDung, String> {
	NguoiDung findByTaiKhoan(TaiKhoan taiKhoan);
    List<NguoiDung> findByHoTenDem(String hoTenDem);
    List<NguoiDung> findAll();
    NguoiDung findById(int id);
    
    @Query(value ="select * from nguoi_dung n join tai_khoan t on n.tai_khoan_id = t.id where t.vaiTroId = 2",nativeQuery = true)
    List<NguoiDung> findByRoleMember();
    
    @Query(value ="select * from nguoi_dung where cuaHangId is not NULL",nativeQuery = true)
    List<NguoiDung> findByCuaHang();
}
