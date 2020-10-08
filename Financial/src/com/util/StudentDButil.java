package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.cart.Refunds;
import com.cart.cart;

public class StudentDButil {

		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		public static List<cart> validate(String student_id){
				ArrayList<cart> ma = new ArrayList<>();
				
				try {
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
					/*query should be this : to get details from 2 tables*/
					String sql ="SELECT A.subjectCode,A.name,A.level FROM subject A,studentsubscription S WHERE S.subjectCode=A.subjectCode AND S.studentID='"+student_id+"'";
					
					rs = stmt.executeQuery(sql);
					
				while(rs.next())
				{
					String subjectcode = rs.getString(1);
					String name = rs.getString(2);
					String level = rs.getString(3);
					
					cart m = new cart( subjectcode , name ,level);
					ma.add(m);
				}
				}catch(Exception e){
				
					e.printStackTrace();
				}
				
				cart id=new cart(student_id);
		return ma;
		}
		//===============================================================================================================
		public static List<cart> takeid(String student_id){
			ArrayList<cart> idd = new ArrayList<>();
			
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				cart er = new cart(student_id);
				idd.add(er);
			
			}catch(Exception e){
			
				e.printStackTrace();
			}
			
	return idd;
	}
		//===============================================================================================================
		public static boolean insertsalary(String teacherid,String month) {
			
			int teacher_id = Integer.parseInt(teacherid);
		
			boolean isSuccess = false;
		
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
			
			    String sqlS = "insert into salary values('"+teacher_id+"',null,'"+month+"')";
				int rs = stmt.executeUpdate(sqlS);
				
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
	public static boolean insertSalary2(String amountt) {
		
		double amount1 =Double.parseDouble(amountt);
		String type="credit";
		String description = "teachersalarypaid";
		
		
			boolean isSuccess = false;
		
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
			
			    String sqlD = "insert into transaction values(null,'"+amount1+"','"+type+"','"+description+"')";
				int rs = stmt.executeUpdate(sqlD);
				
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
			con = DBconnect.getConnection();
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

	//=========================================================================
	public static boolean insertPaymentA(String student_id,String card_no,String exp_date,String cvv) {
		
		int studentid =Integer.parseInt(student_id);
		int sec_code = Integer.parseInt(cvv);
		
		boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
		
		    String sqlA = "insert into userpayment values ('"+studentid+"','"+card_no+"','"+exp_date+"','"+sec_code+"')";
			int rs = stmt.executeUpdate(sqlA);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return isSuccess;
	}
	
	//=========================================================================
	public static boolean insertPaymentB(String fee) {
		
		double fees = Double.parseDouble(fee);
		String type = "debit";
		String description="Student Paid";
		
	boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
		
		    String sqlB = "insert into transaction values(null,'"+fees+"','"+type+"','"+description+"')";
			int rs = stmt.executeUpdate(sqlB);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return isSuccess;
	}
	//=========================================================================
	
	public static boolean insertRefundA(String reason,String student_id) {	
		String status = "pending";
		int id = Integer.parseInt(student_id);
	
	boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
		
		    String sqlC = "insert into refundrequest values(null,'"+reason+"','"+status+"','"+id+"')";
			int rs = stmt.executeUpdate(sqlC);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return isSuccess;
	}
	
	//=========================================================================
	public static List<Refunds> viewRefunds(String status){
		
		ArrayList<Refunds> ref = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			/*query */
			String sql ="SELECT * FROM refundrequest WHERE status='"+status+"'";
			
			rs = stmt.executeQuery(sql);
			
		while(rs.next())
		{
			String date= rs.getString(1);
			int refID = rs.getInt(2);
			String reason = rs.getString(3);
			String statuss =rs.getString(4);
			int studentID = rs.getInt(5);
			
			Refunds Re = new Refunds(date,refID, reason,statuss, studentID);
			ref.add(Re);
		}
		}catch(Exception e){
		
			e.printStackTrace();
		}
		
			return ref;
		}
	//=========================================================================
	
	public static List<cart> viewSalaryHistory(String student_id){
		ArrayList<cart> salhis = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			/*query should be this : to get details from 2 tables*/
			String sql ="SELECT * FROM subject A,studentsubscription S WHERE S.subjectCode=A.subjectCode AND S.studentID='"+student_id+"'";
			
			rs = stmt.executeQuery(sql);
			
		while(rs.next())
		{
			String subjectcode = rs.getString(1);
			String name = rs.getString(2);
			String level = rs.getString(3);
			
			cart m = new cart( subjectcode , name ,level);
			salhis.add(m);
		}
		}catch(Exception e){
		
			e.printStackTrace();
		}
		
		cart id=new cart(student_id);
return salhis;
}
	
}

