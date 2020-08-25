package Util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		
		String query = "INSERT INTO class VALUES (NULL, ? , ?, ?,?,CURDATE(), '10002', 'test01', ?, ? , null , Null)";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, Sclass.getKey());
		stat.setString(2,Sclass.getDate() );
		stat.setString(3, Sclass.getStart());
		stat.setString(4, Sclass.getEnd());
		stat.setString(5, Sclass.getGrade());
		stat.setString(6, Sclass.getLevel());
		
		
		
		stat.execute();
		
		stat.close();
		conn.close();
		
				
	}
	
	
	
	
	

}
