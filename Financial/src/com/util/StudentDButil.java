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
	 
	public static boolean viewCart(String StudentID)
	{
		boolean isSuccess = false;
		
		try 
		{
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select level,name from ('"+fname+"','"+lname+"','"+school+"','"+grade+"','"+email+"')";
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
