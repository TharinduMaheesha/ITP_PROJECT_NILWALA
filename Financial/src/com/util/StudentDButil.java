package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.util.DBconnect;

public class StudentDButil 
{

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	 
	public static boolean insertVisitor(String fname, String lname,String school,String grade,String email)
	{
		boolean isSuccess = false;
		
		try 
		{
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into visitor values('"+fname+"','"+lname+"','"+school+"','"+grade+"','"+email+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess; 
	}
}
