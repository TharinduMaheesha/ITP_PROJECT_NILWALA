package Model;

public class Teacher {
	
	private int schedule_id;
	private String subject_code;
	private int teacher_id;
	private String date_created;
	private String time_from;
	private String time_to;
	private String class_date;
	private int grade;
	
	public Teacher(int schedule_id, String subject_code, int teacher_id, String date_created, String time_from,
			String time_to, String class_date, int grade) {
		this.schedule_id = schedule_id;
		this.subject_code = subject_code;
		this.teacher_id = teacher_id;
		this.date_created = date_created;
		this.time_from = time_from;
		this.time_to = time_to;
		this.class_date = class_date;
		this.grade = grade;
	}

	public Teacher(int teacher_id) {
		
		this.teacher_id = teacher_id;
	}
	
	public int getSchedule_id() {
		return schedule_id;
	}


	public String getSubject_code() {
		return subject_code;
	}

	

	public int getTeacher_id() {
		return teacher_id;
	}

	

	public String getDate_created() {
		return date_created;
	}

	
	public String getTime_from() {
		return time_from;
	}

	

	public String getTime_to() {
		return time_to;
	}

	

	public String getClass_date() {
		return class_date;
	}

	

	public int getGrade() {
		return grade;
	}

	
	

}
