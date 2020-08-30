package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.UserModel;

public class UserController {

	
	public static void UserSignup(UserModel user) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String sql = "insert into user VALUES (NULL, ?, ?, ?, ?, ?, ?, ?)";
		
		stat = conn.prepareStatement(sql);
		
		stat.setString(1, user.getFname());
		stat.setString(2, user.getLname());
		stat.setString(3, user.getUname());
		stat.setString(4, user.getPassword());
		stat.setString(5, user.getEmail());
		stat.setString(6, user.getNic());
		stat.setString(7, user.getPhone());
		
		stat.execute();
		
		
	}
}
