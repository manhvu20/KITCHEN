package poly.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import poly.bean.LOAIMON;
import poly.database.JDBCUtil;

public class LOAIMON_DAO implements DAOInterface<LOAIMON> {

	public static LOAIMON_DAO getInstance() {
		return new LOAIMON_DAO();
	}

	@Override
	public ArrayList<LOAIMON> selectAll() {
	    ArrayList<LOAIMON> result = new ArrayList<LOAIMON>();
	    try {
	        Connection con = JDBCUtil.getConnection();
	        Statement st = con.createStatement();

	        String sql = "SELECT * FROM LOAIMON";

	        ResultSet rs = st.executeQuery(sql);

	        while (rs.next()) {
	            int idLoai = rs.getInt("IDLOAI");
	            String tenLoai = rs.getString("TENLOAI");

	            // Thêm mã số danh mục và tên danh mục vào đối tượng LOAIMON
	            LOAIMON loaiMon = new LOAIMON(idLoai, tenLoai);

	            // Truy vấn để đếm số món ăn tương ứng với danh mục này
	            String countSql = "SELECT COUNT(*) AS SoLuong FROM MONAN WHERE IDLOAI = " + idLoai;
	            ResultSet countResult = st.executeQuery(countSql);
	            if (countResult.next()) {
	                int soLuongMonAn = countResult.getInt("SoLuong");
	                loaiMon.setSoLuongMonAn(soLuongMonAn);
	            }

	            result.add(loaiMon);
	        }

	        JDBCUtil.closeConnection(con);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return result;
	}
	
	public int insert(LOAIMON loaiMon) {
		
		try {
			Connection con = JDBCUtil.getConnection();
			Statement st = con.createStatement();
			
			String sql = "INSERT INTO LOAIMON (IDLOAI, TENLOAI) " + "VALUES (" + loaiMon.getIdLoai() + ",'" + loaiMon.getTenLoai() + "')";

			int ketQua = st.executeUpdate(sql);
			
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int update(LOAIMON loaiMon) {
		
		try {
			Connection con = JDBCUtil.getConnection();
			Statement st = con.createStatement();
			
			String sql = "UPDATE LOAIMON SET TENLOAI = '" + loaiMon.getTenLoai() + "' WHERE IDLOAI = " + loaiMon.getIdLoai();

			int ketQua = st.executeUpdate(sql);
			
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int delete(LOAIMON loaiMon) {
		
		try {
			Connection con = JDBCUtil.getConnection();
			Statement st = con.createStatement();
			
			String sql = "DELETE FROM LOAIMON WHERE IDLOAI = " + loaiMon.getIdLoai();

			int ketQua = st.executeUpdate(sql);
			
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
