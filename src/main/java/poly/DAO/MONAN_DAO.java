package poly.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import poly.bean.MONAN;
import poly.database.JDBCUtil;

public class MONAN_DAO implements DAOInterface<MONAN> {

	public static MONAN_DAO getInstance() {
		return new MONAN_DAO();
	}
	
	@Override
    public ArrayList<MONAN> selectAll() {
        ArrayList<MONAN> result = new ArrayList<MONAN>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = JDBCUtil.getConnection();
            String sql = "SELECT * FROM MONAN WHERE TRANGTHAI = 1";
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

                MONAN monAn = new MONAN(idMon, tenMon, hinhAnh, moTa, idLoai, id_ND, idCongThuc, trangThai);
                result.add(monAn);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeConnection(con);
        }
        return result;
    }

    public int delete(MONAN monAn) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = JDBCUtil.getConnection();
            String sql = "DELETE FROM MONAN WHERE IDMON = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, monAn.getIdMon());
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
