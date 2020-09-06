package Util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Model.*;

public class StudentDButil {

		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		public static List<cart> validate(String student_id){
				ArrayList<cart> ma = new ArrayList<>();
				
				try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select* from cart where student_id = '"+student_id+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
				int studentid = rs.getInt(1);
				String subjectcode = rs.getString(2);
				String name = rs.getString(3);
				String level = rs.getString(4);
				System.out.println("test : " + name);
				
				cart m = new cart(studentid , subjectcode , name ,level);
				ma.add(m);
				}
				}catch(Exception e){
				
				e.printStackTrace();
				}
		return ma;
		}
		//===============================================================================================================
		public static boolean insertsalary(String teacher_id,String transaction_id) {
			
			boolean isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
			
			    String sql = "insert into salary values('"+teacher_id+"','"+transaction_id+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			}
		//===============================================================================================================
	public static boolean insert(String transaction_id,String description, String type, String amount) {
		
		double amount1 =Double.parseDouble(amount);
			
			boolean isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
			
			    String sql = "insert into transaction values ('"+transaction_id+"','"+description+"','"+type+"','"+amount1+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
	
	
	//================================================================
	public static boolean insertCard(String userID ,String cardNO,String cw,String expDate){
		
		
		boolean isSuccess = false;
	
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		
		    String sql = "insert into userpayment values('"+userID+"', '"+cardNO+"','"+cw+"','"+expDate+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}