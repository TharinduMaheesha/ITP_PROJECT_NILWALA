package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.*;

@SuppressWarnings("unused")
public class DButil {
	
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet result = null;
	
	public static boolean addNewSubject(String subject_code,String subject_name,String subject_level,String subject_grade,String subject_medium,String subject_fee ) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "insert into subject values('"+subject_code+"','"+subject_name+"', '"+subject_level+"', '"+subject_grade+"',  '"+subject_medium+"','"+subject_fee+"' )";
			int result = stat.executeUpdate(sql);
			
			if(result > 0) {
				
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
	
	
	public static List<Subject> getSubject(String grade , String medium){
		
		int convertedGrade = Integer.parseInt(grade);
		
		ArrayList<Subject> subject = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from subject where grade='"+convertedGrade+"'and medium = '"+medium+"' ";
			result = stat.executeQuery(sql);
			
			while(result.next())
			{
				String subjectCode = result.getString(1);
				String subjectName = result.getString(2);
				String subjectLevel = result.getString(3);
				int subjectGrade = result.getInt(4);
				String subjectMedium = result.getString(5);
				double subjectFee = result.getDouble(6);
				
				Subject sub = new Subject(subjectCode,subjectName,subjectLevel,subjectGrade,subjectMedium,subjectFee);
				subject.add(sub);
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
				
		return subject;
		
	}
	
	
	public static boolean deleteSubject(String Subname)
	{
		boolean isSuccess = false;
		
		try
		{
			con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from subject where name = '"+Subname+"' ";
    		
    		int result = stat.executeUpdate(sql);
    		
    		if(result > 0) 
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
			
		}
		
		return isSuccess;
	}
	
	
	public static boolean RegisterTeacher(String teacherid , String subjectCode , String Grade)
	{
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "insert into teacher_subject values('"+teacherid+"' ,'"+subjectCode+"' ,'"+Grade+"')"; 
    		
    		int result = stat.executeUpdate(sql);
			
			if(result > 0) {
				
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
	
	public static List<TeacherSubject> getRegList(String teacherID){
		
		int convertedTid = Integer.parseInt(teacherID);
		
		ArrayList<TeacherSubject> regSub = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from teacher_subject where teacher_id='"+convertedTid+"' ";
			result = stat.executeQuery(sql);
			
			while(result.next())
			{
				int teacherid = result.getInt(1);
				String subjectCode = result.getString(2);
				int grade = result.getInt(3);
				
				TeacherSubject rs = new TeacherSubject( teacherid,subjectCode ,grade);
				regSub.add(rs);
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
				
		return regSub;
		
		
	}
	
	public static List<TeacherSubject> getTeacherList(){
		
		
		ArrayList<TeacherSubject> regSub = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from teacher_subject  ";
			result = stat.executeQuery(sql);
			
			while(result.next())
			{
				int teacherid = result.getInt(1);
				String subjectCode = result.getString(2);
				int grade = result.getInt(3);
				
				TeacherSubject rs = new TeacherSubject( teacherid,subjectCode ,grade);
				regSub.add(rs);
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
				
		return regSub;
		
		
	}
	
	
	
	
	public static boolean Unregister(String SubCode)
	{
		boolean isSuccess = false;
		
		try
		{
			con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from teacher_subject where subject_code = '"+SubCode+"' ";
    		
    		int result = stat.executeUpdate(sql);
    		
    		if(result > 0) 
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
			
		}
		
		return isSuccess;
	}
	
	public static List<StudentShowSubject> StudentShowSubjects(String grade , String medium) {
		
		int convertedGrade = Integer.parseInt(grade);
		
		ArrayList<StudentShowSubject> STsList = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select subject.name , subject.subject_code , subject.fee , teacher_subject.teacher_id"
					+ " from subject  , teacher_subject  where teacher_subject.subject_code = subject.subject_code "
					+ "and teacher_subject.grade='"+convertedGrade+"'and medium = '"+medium+"' ";
			
			result = stat.executeQuery(sql);
			
			while(result.next())
			{
				String subjectCode = result.getString("subject_code");
				String subjectName = result.getString("name");
				double subjectFee = result.getDouble("fee");
				int teacherID = result.getInt("teacher_id");
				
				StudentShowSubject st = new StudentShowSubject(subjectCode,subjectName,teacherID,subjectFee);
				STsList.add(st);
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
				
		return STsList;
		
	}
	
	
		
	public static List<StudentSubscription> getYourSubjectList(String StudentID){
		
		int convertedSTID = Integer.parseInt(StudentID);
		
		
		ArrayList<StudentSubscription> yoursub = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from student_subscription where student_id ='"+convertedSTID+"' ";
			result = stat.executeQuery(sql);
			
			while(result.next())
			{
				int teacherid = result.getInt(1);
				String subjectCode = result.getString(2);
				int studentid = result.getInt(3);
				int payment = result.getInt(4);
				
				StudentSubscription ys = new StudentSubscription(teacherid,subjectCode,studentid ,payment );
				yoursub.add(ys);
			}
			
			
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
				
		return yoursub;		
	}
	
	
	public static boolean joinToSubject(String teacher_id , String subject_code, String student_id, String payment_status) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "insert into student_subscription values('"+teacher_id+"' ,'"+subject_code+"' , '"+student_id+"' , '"+payment_status+"')";
			int result = stat.executeUpdate(sql);
			
			if(result > 0) {
				
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
		
	

}
