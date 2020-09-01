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
	 
	public static List<Student> viewCart(String StudentID)
	{
		ArrayList<Student> stu  = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select level,name from subject s,studentsubscription t where s.subjectCode=t.subjectCode AND studentID='"+StudentID+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String level=rs.getString(1);
				String name=rs.getString(2);
				
				Student st = new Student(level,name);
				stu.add(st);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return stu;
	
	}
}
