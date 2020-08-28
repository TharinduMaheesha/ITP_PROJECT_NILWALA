package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class TeacherDBUtil {
	
	public static List<Teacher> validate(String subject_code){
		
		ArrayList<Teacher> tea = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/nilwala_online_system";
		String user = "root";
		String password = "hashini";
		
		
		
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement(); 
			String sql = "select * from schedule where subject_code='"+subject_code+"' ";
            ResultSet rs = stmt.executeQuery(sql);
            
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

}
