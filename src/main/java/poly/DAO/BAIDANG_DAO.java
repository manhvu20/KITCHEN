package poly.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import poly.bean.BAIDANG;
import poly.database.JDBCUtil;

public class BAIDANG_DAO {
	public ArrayList<BAIDANG> selectBaiDang() {
	    ArrayList<BAIDANG> result = new ArrayList<BAIDANG>();
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        con = JDBCUtil.getConnection();
	        String sql = "SELECT M.*, U.TENND FROM MONAN M JOIN USERS U ON M.ID_ND = U.ID_ND WHERE M.TRANGTHAI = 0";
	        ps = con.prepareStatement(sql);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            int idMon = rs.getInt("IDMON");
	            String tenMon = rs.getString("TENMON");
	            String hinhAnh = rs.getString("HINHANH");
	            String moTa = rs.getString("MOTA");
	            int idLoai = rs.getInt("IDLOAI");
	            int id_ND = rs.getInt("ID_ND");
	            int idCongThuc = rs.getInt("IDCONGTHUC");
	            int trangThai = rs.getInt("TRANGTHAI");
	            String tenNguoiDang = rs.getString("TENND");

	            BAIDANG baiDang = new BAIDANG(idMon, tenMon, hinhAnh, moTa, idLoai, id_ND, idCongThuc, trangThai, tenNguoiDang);
	            baiDang.setTenNguoiDang(tenNguoiDang);
	            result.add(baiDang);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        JDBCUtil.closeConnection(con);
	    }
	    return result;
	}

    public int updateTrangThai(int idMon) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = JDBCUtil.getConnection();
            String sql = "UPDATE MONAN SET TRANGTHAI = 1 WHERE IDMON = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, idMon);
            int ketQua = ps.executeUpdate();
            return ketQua;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            JDBCUtil.closeConnection(con);
        }
    }
    
    public int delete(BAIDANG baiDang) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = JDBCUtil.getConnection();
            String sql = "DELETE FROM MONAN WHERE IDMON = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, baiDang.getIdMon());
            int ketQua = ps.executeUpdate();
            return ketQua;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            JDBCUtil.closeConnection(con);
        }
    }
}
