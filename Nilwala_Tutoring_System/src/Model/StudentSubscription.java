package Model;

public class StudentSubscription {
	
	private int teacher_id;
	private String subject_code;
	private int student_id;
	private int payment_status;
	
	public StudentSubscription(int teacher_id, String subject_code, int student_id, int payment_status) {
		super();
		this.teacher_id = teacher_id;
		this.subject_code = subject_code;
		this.student_id = student_id;
		this.payment_status = payment_status;
	}

	public int getTeacher_id() {
		return teacher_id;
	}

	public String getSubject_code() {
		return subject_code;
	}

	public int getStudent_id() {
		return student_id;
	}

	public int getPayment_status() {
		return payment_status;
	}


}
