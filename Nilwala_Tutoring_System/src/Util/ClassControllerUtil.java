package Util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.SubjectClass;
import Model.UserModel;

public class ClassControllerUtil {
	
	public static void createClass(SubjectClass Sclass , InputStream video , String uid) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "INSERT INTO class VALUES (NULL, ? , ?, ?,?,CURDATE(), ?, 'test01', ?, ? , ? , ? ,?)";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, Sclass.getKey());
		stat.setString(2,Sclass.getDate() );
		stat.setString(3, Sclass.getStart());
		stat.setString(4, Sclass.getEnd());
		stat.setString(5, uid);
		stat.setString(6, Sclass.getGrade());
		stat.setString(7, Sclass.getLevel());
		stat.setString(8, Sclass.getQuiz());
		stat.setString(10, Sclass.getVideo());

		
		 if (video != null) {
             // fetches input stream of the upload file for the blob column
             stat.setBlob(9, video);
         }

		
		stat.execute();
		
		stat.close();
		conn.close();
		
				
	}
	
	public static void createClassTemp(SubjectClass Sclass) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "INSERT INTO class VALUES (NULL, ? , ?, ?,?,CURDATE(), '10002','test01', ?, ?, null , null , null)";
		
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
	
	public static ArrayList<SubjectClass> AvailableClasses(String uid) throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class  WHERE class_id in (select class_id from class where date > CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to >= CURRENT_TIME())) and teacher_id = ? order by class_id desc";
		//select * from class  WHERE class_id in (select class_id from class where date > CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to >= CURRENT_TIME())) and teacher_id = 10002 order by class_id desc
		stat = conn.prepareStatement(query);
		stat.setString(1, uid);
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
	
public static ArrayList<SubjectClass> classHistory(String id) throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class  WHERE class_id in "
				+ "(select class_id from class where date < CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to <= CURRENT_TIME()))and teacher_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, id);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			String cid = rs.getString("class_id");
			String subjectCode = rs.getString("subject_code");
			String grade = rs.getString("grade");
			String date = rs.getString("date");
			String time = rs.getString("time_from");
			
			String subject = getSubjectName(subjectCode);
			
			SubjectClass sub = new SubjectClass();
			sub.setDate(date);
			sub.setGrade(grade);
			sub.setSubject(subject);
			sub.setId(cid);
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
	
	public static String classCount(String id) throws SQLException {

		String count = null;
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select count(class_id) as classes from class  WHERE class_id in (select class_id from class where date < CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to <= CURRENT_TIME())) and teacher_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, id);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			count = rs.getString("classes");
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return count;
	}
	
	public static SubjectClass ViewClassDetails(String id) throws SQLException, IOException {
		
		Connection conn = DBConnect.getConnection();
		SubjectClass sub = null ;

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * , TIMESTAMPDIFF(hour , time_from , time_to) as duration from class where class_id = ? ";
		stat = conn.prepareStatement(query);
		stat.setString(1, id);

		rs=stat.executeQuery();
		
		while(rs.next()) {
			

			String level = rs.getString("level");
			String grade = rs.getString("grade");
			String subject = getSubjectName(rs.getString("subject_code"));
			String date = rs.getString("date");
			String time = rs.getString("time_from");
			String end = rs.getString("duration");
			String key = rs.getString("enrollment_key");
			String quiz = rs.getString("quiz_link");
			String path = rs.getString("name");

			
			
			
			sub = new SubjectClass(level, grade, key, date, time, end, subject);
			sub.setQuiz(quiz);

			Blob video = rs.getBlob("video_path");
			sub.setPath(video);
			System.out.println(path);
			System.out.println(video);
			
			if(video != null) {
				byte[] b = video.getBytes(1, (int) video.length());
				FileOutputStream fout=new FileOutputStream("C:\\Users\\Tharindu Munasinghe\\git\\repository2\\Nilwala_Tutoring_System\\WebContent\\videos\\"+path);
				fout.write(b);
				sub.setVideo("videos/" + path);

			}
			else {
				sub.setVideo(null);

			}
			
			
		}
		
		return sub;
		
	}
	
	public static void AddVideo(String link , InputStream video , String id , String name) throws SQLException {
		
	Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "UPDATE class SET quiz_link = ?, video_path =? ,name = ? where class_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, link);
		stat.setString(4, id);
		stat.setString(3, name);
		
		
		 if (video != null) {
             // fetches input stream of the upload file for the blob column
             stat.setBlob(2, video);
         }

		
		stat.execute();
		
		stat.close();
		conn.close();
		
	}
	
	public static void updateWithoutVideo(SubjectClass sub) throws SQLException {
		
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "UPDATE class SET enrollment_key = ? , date = ? , time_from = ? , time_to = ?, "
				+ "grade =? , level = ? ,  quiz_link = ?  where class_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, sub.getKey());
		stat.setString(2, sub.getDate());
		stat.setString(3, sub.getStart());
		stat.setString(4, sub.getEnd());
		stat.setString(5, sub.getGrade());
		stat.setString(6, sub.getLevel());
		stat.setString(7, sub.getQuiz());
		stat.setString(8, sub.getId());
		
		stat.execute();

		stat.close();
		conn.close();
	}
	
	public static void updateWithVideo(SubjectClass sub , InputStream video) throws SQLException {
		
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String query = "UPDATE class SET enrollment_key = ? , date = ? , time_from = ? , time_to = ?, "
				+ "grade =? , level = ? ,  quiz_link = ? , video_path = ? , name = ? where class_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, sub.getKey());
		stat.setString(2, sub.getDate());
		stat.setString(3, sub.getStart());
		stat.setString(4, sub.getEnd());
		stat.setString(5, sub.getGrade());
		stat.setString(6, sub.getLevel());
		stat.setString(7, sub.getQuiz());
		stat.setString(9, sub.getVideo());
		stat.setString(10, sub.getId());
		
		 if (video != null) {
             // fetches input stream of the upload file for the blob column
             stat.setBlob(8, video);
         }
		 
		stat.execute();

		stat.close();
		conn.close();
	}

	public static ArrayList<SubjectClass> StudentAvailableClasses(String tid , String code) throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class  WHERE class_id in (select class_id from class where  date > CURRENT_DATE() OR (date = CURRENT_DATE() AND time_to >= CURRENT_TIME())) and teacher_id = ? and subject_code = ? order by class_id desc";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, tid);
		stat.setString(2, code);
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
	
	public static String validateClass(String id) throws SQLException {
		
		String key = null;
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		ResultSet rs = null;
		
		String sql = "select enrollment_key from class where class_id = ?";
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		rs = stat.executeQuery();
		
		while(rs.next()) {
			key = rs.getString("enrollment_key");
		}
		rs.close();
		stat.close();
		conn.close();
		
		return key;
	}
	
	public static void studentEnroll(String sid , String cid) throws SQLException {
		
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		
		String sql = "insert into student_class values (?,?)";
		stat = conn.prepareStatement(sql);
		stat.setString(1, cid);
		stat.setString(2, sid);
		stat.execute();
		stat.close();
		conn.close();
		
	}

	public static String checkEnrolled(String cid , String sid) throws SQLException {
		
		String something = null;
		Connection conn = DBConnect.getConnection();
		
		PreparedStatement stat = null;
		ResultSet res= null;
		
		String sql = "select class_id from student_class where class_id = ? and student_id = ?";
		stat = conn.prepareStatement(sql);
		stat.setString(1, cid);
		stat.setString(2, sid);
		
		res = stat.executeQuery();
		while(res.next()) {
			something = res.getString("class_id");
			System.out.println(something);
				return something;
			
		}
		return "0";
	}
	
	public static ArrayList<SubjectClass> enrolledClasses(String sid ) throws SQLException {
		
		ArrayList<SubjectClass> array = new ArrayList<>();
		
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select * from class , student_class where class.class_id = student_class.class_id and class.class_id in (select class_id from class where date > CURRENT_DATE() "
				+ "OR (date = CURRENT_DATE() AND time_to >= CURRENT_TIME())) and student_class.student_id = ?";
		stat = conn.prepareStatement(query);
		stat.setString(1, sid);
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
	
	public static  SubjectClass Student_Class(String id) throws SQLException, IOException {
		
		
		SubjectClass sub = null;
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		String sql= "select s.name , c.name , u.first_name,u.last_name  , c.video_path , c.quiz_link\r\n" + 
				"from class c , teacher_subject ts , teacher t , user u , subject s\r\n" + 
				"where c.teacher_id=ts.teacher_id and s.subject_code = ts.subject_code and c.subject_code = ts.subject_code "
				+ "and  ts.teacher_id = t.teacher_id and t.teacher_id = u.user_id and c.class_id = ?";
		
		conn = DBConnect.getConnection();
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		
		if(res.next()) {
			
			String fname = res.getString("first_name");
			String lname = res.getString("last_name");
			String quiz = res.getString("quiz_link");
			String path = res.getString("name");
			String subject = res.getString("name");
			Blob video = res.getBlob("video_path");
			

			sub = new SubjectClass();
			sub.setFname(fname);
			sub.setLname(lname);
			sub.setQuiz(quiz);
			sub.setSubject(subject);
			
			if(video != null) {
				byte[] b = video.getBytes(1, (int) video.length());
				FileOutputStream fout=new FileOutputStream("C:\\Users\\Tharindu Munasinghe\\git\\repository2\\Nilwala_Tutoring_System\\WebContent\\videos\\"+path);
				fout.write(b);
				sub.setVideo("videos/" + path);
			}
			
		}
		res.close();
		stat.close();
		conn.close();
		return sub;
		
	}
	
	public static SubjectClass ViewHistoryDetails(String id) throws SQLException, IOException {
		
		
		SubjectClass sub = new SubjectClass();
		
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		String sql = "select *\r\n" + 
				"from class c , teacher_subject ts , teacher t , subject s , user u\r\n" + 
				"where c.teacher_id = ts.teacher_id and t.teacher_id = ts.teacher_id and "
				+ "ts.subject_code = s.subject_code and c.subject_code = ts.subject_code and "
				+ "t.teacher_id = u.user_id and c.class_id = ?";
		
		conn = DBConnect.getConnection();
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		
		while(res.next()) {
			
			String cid = res.getString("class_id");
			String sname = res.getString(19);
			String date = res.getString("date");
			String time = res.getString("time_from");
			String grade = res.getString("grade");
			Blob video = res.getBlob("video_path");
			String path = res.getString(13);

			sub.setId(cid);
			sub.setSubject(sname);
			sub.setDate(date);
			sub.setStart(time);
			sub.setGrade(grade);
		

			if(video != null) {
				byte[] b = video.getBytes(1, (int) video.length());
				FileOutputStream fout=new FileOutputStream("C:\\Users\\Tharindu Munasinghe\\git\\repository2\\Nilwala_Tutoring_System\\WebContent\\videos\\"+path);
				fout.write(b);
				sub.setVideo("videos/" + path);
			}
			
			
		}
		
		res.close();
		stat.close();
		conn.close();
		return sub;
		
	}
	
	public static String studentCount(String id ) throws SQLException {
		
		String count = null;
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		String sql = "select COUNT(*) as count from student_class where class_id = ?";
		
		conn = DBConnect.getConnection();
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		
		if(res.next()) {
			count = res.getString("count");
		}
		res.close();
		stat.close();
		conn.close();
		return count;
	}
	
	public static ArrayList<UserModel> AttendanceSheet(String id) throws SQLException {
		
		ArrayList<UserModel> array = new ArrayList<UserModel>();
		
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		String sql = "select u.user_id , u.first_name, u.last_name\r\n" + 
				"from student_class sc , student s , user u\r\n" + 
				"where sc.student_id = s.student_id and s.student_id = u.user_id and class_id = ?";
		
		conn = DBConnect.getConnection();
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		while(res.next()) {
			
			String uid = res.getString("user_id");
			String fname = res.getString("first_name");
			String lname = res.getString("last_name");
			
			UserModel user = new UserModel();
			user.setFname(fname);
			user.setLname(lname);
			user.setId(uid);
			
			array.add(user);
			
		}
		
		return array;
		
	}
	

	public static String StudentclassCount(String id) throws SQLException {

		String count = null;
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "select COUNT(class_id) as count from student_class where student_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, id);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			count = rs.getString("count");
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return count;
	}
	
	public static ArrayList<SubjectClass> getStudentSubjects(String id) throws SQLException {

		ArrayList<SubjectClass> array = new ArrayList<>();
		
		String count = null;
		Connection conn = DBConnect.getConnection();

		PreparedStatement stat = null;
		ResultSet rs = null;
		String query = "SELECT * FROM `student_subscription` WHERE student_id = ?";
		
		stat = conn.prepareStatement(query);
		stat.setString(1, id);
		rs=stat.executeQuery();
		
		while(rs.next()){
			
			String tid = rs.getString("teacher_id");
			String subcode = rs.getString("subject_code");
			
			SubjectClass sub = new SubjectClass();
			sub.setSubject(subcode);
			sub.setTid(tid);
			
			array.add(sub);
		}
		
		rs.close();
		stat.close();
		conn.close();
		
		return array;
	}
}
