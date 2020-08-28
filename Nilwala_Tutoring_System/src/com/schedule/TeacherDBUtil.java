package com.schedule;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class TeacherDBUtil {
	
	private static Connection con  = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Teacher> validate(String subject_code){
		
		ArrayList<Teacher> tea = new ArrayList<>();
		
		//validate
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from schedule where subject_code='"+subject_code+"' ";
            rs = stmt.executeQuery(sql);
            
            if(rs.next()) {
            	int schedule_id = rs.getInt(1);
            	String subjectcode = rs.getString(2);
            	int teacher_id = rs.getInt(3);
            	String date_created = rs.getString(4);
            	String time_from = rs.getString(5);
            	String time_to = rs.getString(6);
            	String class_date = rs.getString(7);
            	int grade = rs.getInt(8);
            	
            	Teacher t = new Teacher(schedule_id,subjectcode,teacher_id,date_created,time_from,time_to,class_date,grade);
            	tea.add(t);
            }
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return tea;
	}
	
	public static boolean Insertschedule(String subject_code , String teacher_id , String date_created , String time_from , String time_to , String class_date , String grade) {
		
		boolean isSuccess = false;
		
		try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "insert into schedule values(0,'"+subject_code+"' , '"+teacher_id+"' , '"+date_created+"' , '"+time_from+"' , '"+time_to+"' , '"+class_date+"', '"+grade+"')";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 
				 isSuccess = true;
				 
			 }else {
				 
				 isSuccess = false;
			 }
			 
			 
		}	
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
	
	

}
