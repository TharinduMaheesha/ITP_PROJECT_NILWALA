package Model;

public class StudentShowSubject {
	
	private String subject_code;
	private String name;
	private int teacher_id;
	private double fee;
	
	public StudentShowSubject(String subject_code, String name, int teacher_id, double fee) {
		super();
		this.subject_code = subject_code;
		this.name = name;
		this.teacher_id = teacher_id;
		this.fee = fee;
	}

	public String getSubject_code() {
		return subject_code;
	}

	public String getName() {
		return name;
	}

	public int getTeacher_id() {
		return teacher_id;
	}

	public double getFee() {
		return fee;
	}


}
