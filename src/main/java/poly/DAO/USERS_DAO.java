package poly.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import poly.bean.USERS;
import poly.database.JDBCUtil;

public class USERS_DAO implements DAOInterface<USERS> {

	public static USERS_DAO getInstance() {
		return new USERS_DAO();
	}

	@Override
	public ArrayList<USERS> selectAll() {
		ArrayList<USERS> result = new ArrayList<USERS>();
		try {
			Connection con = JDBCUtil.getConnection();
			Statement st = con.createStatement();
			
			String sql = "SELECT * FROM USERS";

			ResultSet rs = st.executeQuery(sql);
			
			while (rs.next()) {
				int id_ND = rs.getInt("ID_ND");
				String tenND = rs.getString("TENND");
				String email = rs.getString("EMAIL");
				String password = rs.getString("PASSWORD");
				int trangThai = rs.getInt("TRANGTHAI");
				int idVT = rs.getInt("IDVT");
				
				USERS user = new USERS(id_ND, tenND, email, password, trangThai, idVT);
				result.add(user);
			}
			
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
