package Util;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.NoticeModel;
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
	
	public static boolean login(String uname , String psw) throws SQLException {
		
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		ResultSet rs = null;
		
		String sql = "select user_name , password from user";
		
		stat = conn.prepareStatement(sql);
		rs =  stat.executeQuery();
		
		while(rs.next()) {
			
			String name = rs.getString("user_name");
			String password = rs.getString("password");
			
			if(name.equals(uname) && password.equals(psw))
				return true;
			
		}
		
		return false;
		
	}
	
	public static String findUser(String uname , String psw) throws SQLException {
		
		String id = null ;

		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		PreparedStatement stat2= null;
		PreparedStatement stat3= null;

		ResultSet rs = null;
		ResultSet rs1 = null;

		
		String sql = "select user_id from user where user_name = ? and password = ?";
		String sql2 = "select teacher_id from teacher where teacher_id = ?";

		
		stat = conn.prepareStatement(sql);
		stat.setString(1, uname);
		stat.setString(2, psw);

		rs =  stat.executeQuery();
		
		while(rs.next()) {
			id = rs.getString("user_id");
		}
		
		String value = null;
		
		stat2 = conn.prepareStatement(sql2);
		stat2.setString(1, id);
		rs1 = stat2.executeQuery();
		while(rs1.next()) {
			value = rs1.getString("teacher_id");
		}
		System.out.println(value);
		
		if(value != null)
			return "teacher";
		else 
			return "student";
		
	}
	
	public static String  getUID(String uname) throws SQLException {
		
		String id = null;
		Connection conn = DBConnect.getConnection();
		ResultSet rs = null;
		PreparedStatement stat = null;
		
		String sql = "select user_id from user where user_name = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, uname);
		rs = stat.executeQuery();
		
		while(rs.next()) {
			id = rs.getString("user_id");
		}
		return id;

	}
	
	public static void addTeacher(String id) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		PreparedStatement stat = null;
		String sql = "insert into teacher values (?)";
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		stat.execute();
	}
	
	public static void addStudent(String id , String grade) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		PreparedStatement stat = null;
		String sql = "insert into student values (?,?)";
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		stat.setString(2, grade);
		stat.execute();
	}
	
	public static byte[] getSHA(String input) throws NoSuchAlgorithmException 
    {  
        // Static getInstance method is called with hashing SHA  
        MessageDigest md = MessageDigest.getInstance("SHA-256");  
  
        // digest() method called  
        // to calculate message digest of an input  
        // and return array of byte 
        return md.digest(input.getBytes(StandardCharsets.UTF_8));  
    } 
    
    public static String toHexString(byte[] hash) 
    { 
        // Convert byte array into signum representation  
        BigInteger number = new BigInteger(1, hash);  
  
        // Convert message digest into hex value  
        StringBuilder hexString = new StringBuilder(number.toString(16));  
  
        // Pad with leading zeros 
        while (hexString.length() < 32)  
        {  
            hexString.insert(0, '0');  
        }  
  
        return hexString.toString();  
    } 
    
    public static ArrayList<UserModel> findTeachers(String id) throws SQLException {
		
    	ArrayList<UserModel> user = new ArrayList<UserModel>();
    	
    	Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "select * \r\n" + 
				"from student_subscription st , teacher t , user u , subject s\r\n" + 
				"where s.subject_code = st.subject_code and st.teacher_id = t.teacher_id and t.teacher_id = u.user_id and st.student_id = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		
		while(res.next()) {
			
			String tid = res.getString("teacher_id");
			String fname = res.getString("first_name");
			String lname = res.getString("last_name");
			String name = res.getString("name");
			String sid = res.getString("subject_code");
			
			
			UserModel us = new UserModel();
			us.setFname(fname);
			us.setLname(lname);
			us.setId(tid);
			us.setUname(name);
			us.setNic(sid);
			
			user.add(us);
			
			
		}
		res.close();
		stat.close();
		conn.close();
		
		return user;
	}
}
