package Model;

public class Student {
	
	private int student_id;
	private int grade;
	
	public Student(int student_id, int grade) {
		super();
		this.student_id = student_id;
		this.grade = grade;
	}

	public int getStudent_id() {
		return student_id;
	}

	public int getGrade() {
		return grade;
	}

	
}
