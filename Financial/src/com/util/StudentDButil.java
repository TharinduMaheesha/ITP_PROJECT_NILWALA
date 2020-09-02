package com.util;

import java.util.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.student.Student;
import com.util.DBconnect;

public class StudentDButil 
{
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	 
//view cart details from the database####################################################################################	
	public static List<Student> viewCart(String studentID)
	{
		ArrayList<Student> stu  = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select s.subjectCode,s.name,s.level from subject s ,studentsubscription t where s.subjectCode=t.subjectCode and studentID='"+studentID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				String subjectCode=rs.getString(1);
				String name=rs.getString(2);
				String level=rs.getString(3);
				
				Student st = new Student(subjectCode,name,level);
				stu.add(st);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return stu;
	}
	
	
//insert monthly salary to the database####################################################################################
	public static boolean insertSal(String teacherID,String amount,String description,String type){
		
		isSuccess= false;
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql ="insert into salary values()" ;
			int sal = stmt.executeUpdate(sql);
			
			if(sal > 0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
