package Util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.SubjectClass;

public class ClassControllerUtil {
	
	public static void createClass(SubjectClass Sclass , InputStream video) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "INSERT INTO class VALUES (NULL, ? , ?, ?,?,CURDATE(), '10002', 'test01', ?, ? , ? , ?)";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, Sclass.getKey());
		stat.setString(2,Sclass.getDate() );
		stat.setString(3, Sclass.getStart());
		stat.setString(4, Sclass.getEnd());
		stat.setString(5, Sclass.getGrade());
		stat.setString(6, Sclass.getLevel());
		stat.setString(7, Sclass.getQuiz());
		
		 if (video != null) {
             // fetches input stream of the upload file for the blob column
             stat.setBlob(8, video);
         }

		
		stat.execute();
		
		stat.close();
		conn.close();
		
				
	}
	
	public static void createClassTemp(SubjectClass Sclass) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "INSERT INTO class VALUES (NULL, ? , ?, ?,?,CURDATE(), '10002', ?, ?, ? , null , Null)";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, Sclass.getKey());
		stat.setString(2,Sclass.getDate() );
		stat.setString(3, Sclass.getStart());
		stat.setString(4, Sclass.getEnd());
		stat.setString(5, Sclass.getSubject());
		stat.setString(6, Sclass.getGrade());
		stat.setString(7, Sclass.getLevel());
		
		
		
		stat.execute();
		
		stat.close();
		conn.close();
		
				
	}
	
	public static ArrayList<SubjectClass> AvailableClasses() throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class  WHERE date > CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to >= CURRENT_TIME())";
		
		stat = conn.prepareStatement(query);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			String id = rs.getString("class_id");
			String subjectCode = rs.getString("subject_code");
			String grade = rs.getString("grade");
			String date = rs.getString("date");
			String time = rs.getString("time_from");
			
			String subject = getSubjectName(subjectCode);
			
			SubjectClass sub = new SubjectClass();
			sub.setDate(date);
			sub.setGrade(grade);
			sub.setSubject(subject);
			sub.setId(id);
			sub.setStart(time);
			
			array.add(sub);
			
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return array;

	}
	
	public static String getSubjectName(String subjectCode) throws SQLException {
		
		String subject = null;
		
		Connection conn = DBConnect.getConnection();
		PreparedStatement stat = null;
		ResultSet rs = null;
		String sql = "select name from subject where subject_code = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, subjectCode);
		
		rs = stat.executeQuery();
		 while(rs.next()) {
			 
			 subject = rs.getString("name");
		 }
		 
		 rs.close();
		 stat.close();
		 conn.close();
			
		 return subject;
		
	}
	
public static ArrayList<SubjectClass> classHistory() throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class  WHERE date < CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to <= CURRENT_TIME())";
		
		stat = conn.prepareStatement(query);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			String id = rs.getString("class_id");
			String subjectCode = rs.getString("subject_code");
			String grade = rs.getString("grade");
			String date = rs.getString("date");
			String time = rs.getString("time_from");
			
			String subject = getSubjectName(subjectCode);
			
			SubjectClass sub = new SubjectClass();
			sub.setDate(date);
			sub.setGrade(grade);
			sub.setSubject(subject);
			sub.setId(id);
			sub.setStart(time);
			
			array.add(sub);
			
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return array;

	}
	
	public static ArrayList<SubjectClass> subjectNamesForLevel(String level) throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select name from subject where level = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, level);

		rs=stat.executeQuery();
		
		while(rs.next()) {
			
			String subject = rs.getString("name");
			
			SubjectClass sub = new SubjectClass();
			sub.setSubject(subject);
			
			array.add(sub);
			
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return array;
	}
	
	public static String classCount() throws SQLException {

		String count = null;
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select count(class_id) as classes from class  WHERE date < CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to <= CURRENT_TIME())";
		
		stat = conn.prepareStatement(query);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			count = rs.getString("classes");
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return count;
	}
	
	
	

}
