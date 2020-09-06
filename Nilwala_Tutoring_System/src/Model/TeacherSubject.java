package Model;

public class TeacherSubject {
	
	private int teacher_id;
	private String subject_code;
	private int grade;
	
	public TeacherSubject(int teacher_id, String subject_code, int grade) {
		
		this.teacher_id = teacher_id;
		this.subject_code = subject_code;
		this.grade = grade;
	}

	public int getTeacher_id() {
		return teacher_id;
	}

	public String getSubject_code() {
		return subject_code;
	}

	public int getGrade() {
		return grade;
	}

	

}
