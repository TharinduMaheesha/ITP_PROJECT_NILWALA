package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.AppointmentModel;
import Model.NoticeModel;

public class NoticeControllerUtil {
	
	public static void createNotice(NoticeModel notice) throws SQLException {
		
		Connection conn = null;
		PreparedStatement stat = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "INSERT INTO `notice` (`notice_id`, `grade`, `subject`, `description`, `created_date`, `teacher_id`) VALUES (NULL, ?, ?, ?, CURDATE(), ?)";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, notice.getGrade());
		stat.setString(2, notice.getSubject());
		stat.setString(3, notice.getDescription());
		stat.setString(4, notice.getTid());

		stat.execute();
		
		stat.close();
		conn.close();
		
	}
	
	public static ArrayList<NoticeModel> viewNotices(String id) throws SQLException {
		
		ArrayList<NoticeModel> notice = new ArrayList<NoticeModel>();
		
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "select * , DATE_FORMAT(created_date,'%d/%m/%Y') as date from notice n , teacher t , user u where n.teacher_id = t.teacher_id and t.teacher_id = u.user_id and n.teacher_id = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
		res = stat.executeQuery();
		
		while(res.next()) {
			
			String nid = res.getString("notice_id");
			String description = res.getString("description");
			String subject = res.getString("subject");
			String date = res.getString("date");
			String grade = res.getString("grade");
			String fname = res.getString("first_name");
			String lname = res.getString("last_name");
			NoticeModel note = new NoticeModel();
			
			note.setDate(date);
			note.setDescription(description);
			note.setGrade(grade);
			note.setNid(nid);
			note.setSubject(subject);
			note.setFname(fname);
			note.setLname(lname);
			
			notice.add(note);
			
		}
		res.close();
		stat.close();
		conn.close();
		
		return notice;
	}
		
	public static void deleteNotices(String nid) throws SQLException {
			
			
			Connection conn = null;
			PreparedStatement stat = null;
			
			conn = DBConnect.getConnection();
			
			String sql = "delete from notice where notice_id = ?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, nid);
			stat.execute();
			
			stat.close();
			conn.close();
			
		}
	
	public static void editNotices(NoticeModel notice) throws SQLException {
		
		
		Connection conn = null;
		PreparedStatement stat = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "update  notice set description = ? , grade = ? , subject = ? where notice_id = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(4, notice.getNid());
		stat.setString(1, notice.getDescription());
		stat.setString(2, notice.getGrade());
		stat.setString(3, notice.getSubject());

		stat.execute();
		
		stat.close();
		conn.close();
		
	}
	
	public static void addAppointment(AppointmentModel appointment) throws SQLException {
		
		Connection conn = null;
		PreparedStatement stat = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "INSERT INTO `appointment` (`ap_id`, `description`, `status`, `date_of_appointment`, `date_sent`, `student_id`, `teacher_id`, `subject_code` , `grade`) "
				+ "VALUES (NULL, ?, 'pending', ?, CURDATE() , ?, ?, ? , ?);";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, appointment.getDescription());
		stat.setString(2, appointment.getDate());
		stat.setString(3, appointment.getStudentID());
		stat.setString(4, appointment.getTeacherID());
		stat.setString(5, appointment.getSubjectCode());
		stat.setString(6, appointment.getGrade());



		stat.execute();
		
		stat.close();
		conn.close();
		
		
	}
	
	public static ArrayList<AppointmentModel> viewAppointments(String id) throws SQLException {
			
			ArrayList<AppointmentModel> apointment = new ArrayList<>();
			
			Connection conn = null;
			PreparedStatement stat = null;
			ResultSet res = null;
			
			conn = DBConnect.getConnection();
			
			String sql = "sELECT * , DATE_FORMAT(date_sent,'%d/%m/%Y') as created_date , DATE_FORMAT(date_of_appointment,'%d/%m/%Y') as date\r\n" + 
					"from appointment a , teacher_subject ts , subject s , user u , teacher t \r\n" + 
					"where a.teacher_id = t.teacher_id and t.teacher_id = u.user_id and a.subject_code = s.subject_code and ts.subject_code = s.subject_code and\r\n" + 
					"ts.subject_code = a.subject_code and ts.teacher_id = t.teacher_id and student_id = ? ";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, id);
			res = stat.executeQuery();
			
			while(res.next()) {
				
				String apid = res.getString("ap_id");
				String description = res.getString("description");
				String status = res.getString("status");
				String date = res.getString("date");
				String created = res.getString("created_date");
				String tid = res.getString("teacher_id");
				String subject = res.getString("name");
				String grade = res.getString("grade");
				String subCode = res.getString("subject_code");
				String fname = res.getString("first_name");
				String lname = res.getString("last_name");
	
				
				AppointmentModel app = new AppointmentModel();
				
				app.setId(apid);
				app.setDescription(description);
				app.setStatus(status);
				app.setDate(date);
				app.setCreatedDate(created);
				app.setGrade(grade);
				app.setTeacherID(tid);
				app.setFname(fname);
				app.setLname(lname);
				app.setSubjectCode(subCode);
				app.setName(subject);
				
				
				
				apointment.add(app);
				
			}
			res.close();
			stat.close();
			conn.close();
			
			return apointment;
		}

	public static void cancelAppoitment(String id) throws SQLException {
		
		Connection conn = null;
		PreparedStatement stat = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "delete from appointment where ap_id = ?";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, id);
	
	
	
		stat.execute();
		
		stat.close();
		conn.close();
		
		
	}

	public static ArrayList<AppointmentModel> AdminviewAppointments() throws SQLException {
		
		ArrayList<AppointmentModel> apointment = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		
		conn = DBConnect.getConnection();
		
		String sql = "sELECT * , DATE_FORMAT(date_sent,'%d/%m/%Y') as created_date , DATE_FORMAT(date_of_appointment,'%d/%m/%Y') as date\r\n" + 
				"from appointment a , teacher_subject ts , subject s , user u , teacher t \r\n" + 
				"where a.teacher_id = t.teacher_id and t.teacher_id = u.user_id and a.subject_code = s.subject_code and ts.subject_code = s.subject_code and\r\n" + 
				"ts.subject_code = a.subject_code and ts.teacher_id = t.teacher_id and status = ? ";
		
		stat = conn.prepareStatement(sql);
		stat.setString(1, "pending");
		res = stat.executeQuery();
		
		while(res.next()) {
			
			String apid = res.getString("ap_id");
			String description = res.getString("description");
			String status = res.getString("status");
			String date = res.getString("date");
			String created = res.getString("created_date");
			String tid = res.getString("teacher_id");
			String subject = res.getString("name");
			String grade = res.getString("grade");
			String subCode = res.getString("subject_code");
			String fname = res.getString("first_name");
			String lname = res.getString("last_name");
			String stid = res.getString("student_id");

			
			AppointmentModel app = new AppointmentModel();
			
			app.setId(apid);
			app.setDescription(description);
			app.setStatus(status);
			app.setDate(date);
			app.setCreatedDate(created);
			app.setGrade(grade);
			app.setTeacherID(tid);
			app.setFname(fname);
			app.setLname(lname);
			app.setSubjectCode(subCode);
			app.setName(subject);
			app.setStudentID(stid);
			
			
			
			apointment.add(app);
			
		}
		res.close();
		stat.close();
		conn.close();
		
		return apointment;
	}
	
	public static void requestDecision(String decision , String id) throws SQLException {
			
			
			Connection conn = null;
			PreparedStatement stat = null;
			
			conn = DBConnect.getConnection();
			
			String sql = "update  appointment set status = ? where ap_id = ?";
			
			stat = conn.prepareStatement(sql);
			stat.setString(1, decision);
			stat.setString(2, id);

			
		
	
			stat.execute();
			
			stat.close();
			conn.close();
			
		}

}
