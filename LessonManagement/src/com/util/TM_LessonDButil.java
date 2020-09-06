package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.lesson.TM_LMaterial;
import com.lesson.TM_Lesson;

public class TM_LessonDButil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<TM_LMaterial> validate1(String subject_code ){
		ArrayList<TM_LMaterial> ma = new ArrayList<>();
		
		try {
			con = TM_DBconnect.getConnection();
			stmt = con.createStatement();
	
			String sql = "select* from lesson_material where subject_code = '"+subject_code+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int teacher_id = rs.getInt(1);
				String subjectcode = rs.getString(2);
				int lesson_no = rs.getInt(3);
				String material = rs.getString(4);
				
				TM_LMaterial m = new TM_LMaterial(teacher_id , subjectcode , lesson_no ,material);
				ma.add(m);
			}
		}catch(Exception e){
			
			e.printStackTrace();
		}
		return ma;
		}
	public static boolean insertlesson(String teacher_id,String subject_code, String lesson_no, String material) {
		
		boolean isSuccess = false;
	
		try {
			con = TM_DBconnect.getConnection();
			stmt = con.createStatement();
		
		    String sql = "insert into lesson_material values ('"+teacher_id+"','"+subject_code+"','"+lesson_no+"','"+material+"')";
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
		public static List<TM_Lesson> validate(String subject_code ){
			
			ArrayList<TM_Lesson> tea = new ArrayList<>();
			
			try {
				con = TM_DBconnect.getConnection();
				stmt = con.createStatement();
		
				String sql = "select* from lesson where subject_code = '"+subject_code+"' ";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					int teacher_id = rs.getInt(1);
					String subjectcode = rs.getString(2);
					int lesson_no = rs.getInt(3);
					String lesson_name = rs.getString(4);
					
					TM_Lesson t = new TM_Lesson(teacher_id , subjectcode , lesson_no ,lesson_name);
					tea.add(t);
				}
			}catch(Exception e){
				
				e.printStackTrace();
			}
			return tea;
		
		}
		
		public static boolean insert(String teacher_id,String subject_code, String lesson_no, String lesson_name) {
			
			boolean isSuccess = false;
		
			try {
				con = TM_DBconnect.getConnection();
				stmt = con.createStatement();
			
			    String sql = "insert into lesson values ('"+teacher_id+"','"+subject_code+"','"+lesson_no+"','"+lesson_name+"')";
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
		
		 public static boolean updatelesson(String teacher_id,String subject_code , String lesson_no, String lesson_name) {
		    	
				try {
		    		
		    		con = TM_DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update lesson set teacher_id='"+teacher_id+"',subject_code = '"+subject_code+"',lesson_no='"+lesson_no+"',lesson_name='"+lesson_name+"'"
		    				+ "where subject_code='"+subject_code+"' and teacher_id = '"+teacher_id+"' and lesson_no = '"+lesson_no+"'";
		    		int rs = stmt.executeUpdate(sql);
		    		System.out.println(rs);
		    		if(rs > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		 public static boolean updatelessonM(String teacher_id,String subject_code , String lesson_no, String material) {
		    	
				try {
		    		
		    		con = TM_DBconnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update lesson_material set teacher_id='"+teacher_id+"',subject_code = '"+subject_code+"',lesson_no='"+lesson_no+"',material='"+material+"'"
		    				+ "where subject_code='"+subject_code+"' and teacher_id = '"+teacher_id+"' and lesson_no = '"+lesson_no+"'";
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		 
		 
			public static List<TM_Lesson> getLessonDetails(String subject_code){
			    	
			    	ArrayList<TM_Lesson> ps = new ArrayList<>();
					try {
				    		
				    		con = TM_DBconnect.getConnection();
				    		stmt = con.createStatement();
				    		String sql = "select* from lesson where subject_code ='"+subject_code+"'";
				    		rs = stmt.executeQuery(sql);
				    		
				    		while(rs.next()) {
				    			int teacher_id = rs.getInt(1);
				    			String subjectcode = rs.getString(2);
				    			int lesson_no = rs.getInt(3);
				    			String lesson_name = rs.getString(4);
				    		
				    			TM_Lesson ll = new TM_Lesson(teacher_id , subjectcode , lesson_no , lesson_name);
				    			
				    			ps.add(ll);
				    		}
				    		
				    	}
				    	catch(Exception e) {
				    		e.printStackTrace();
				    	}
			    	return ps;
		    }
			public static List<TM_LMaterial> getLesson(String subject_code){
		    	
		    	ArrayList<TM_LMaterial> ps = new ArrayList<>();
				try {
			    		
			    		con = TM_DBconnect.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "select* from lesson_material where subject_code ='"+subject_code+"'";
			    		rs = stmt.executeQuery(sql);
			    		
			    		while(rs.next()) {
			    			int teacher_id = rs.getInt(1);
			    			String subjectcode = rs.getString(2);
			    			int lesson_no = rs.getInt(3);
			    			String lesson_material = rs.getString(4);
			    		
			    			TM_LMaterial ll = new TM_LMaterial(teacher_id , subjectcode , lesson_no , lesson_material);
			    			
			    			ps.add(ll);
			    		}
			    		
			    	}
			    	catch(Exception e) {
			    		e.printStackTrace();
			    	}
		    	return ps;
	    }

			public static TM_LMaterial ViewLessonMaterials(String tid , String subCode , String lessonNo) throws SQLException {
				
				TM_LMaterial lesson = null; 
	    		con = TM_DBconnect.getConnection();
	    		PreparedStatement stat = null;
	    		
	    		String sql = "select * from lesson_material where teacher_id = ? and subject_code = ? and lesson_no = ?";
	    		stat = con.prepareStatement(sql);
	    		stat.setString(1, tid);
	    		stat.setString(2, subCode);
	    		stat.setString(1, lessonNo);
	    		
	    		stat.execute();
	    		
	    		while(rs.next()) {
	    			
	    			String teacher_id = rs.getString("teacher_id");
	    			String subcode = rs.getString("subject_code");
	    			String lessonno1 = rs.getString("lesson_no");
	    			String mat = rs.getString("material");
	    				    			
	    			lesson = new TM_LMaterial(1, subcode, 1, mat);
	    			lesson.setSteacher_id(teacher_id);
	    			lesson.setSlesson(lessonno1);
	    			
	    			
	    		}

	    		return lesson;
	    		
	    		

				
				
			}
		
}
