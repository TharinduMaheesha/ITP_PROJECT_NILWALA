package Model;

public class Subject {
	
	private String subject_code;
	private String name;
	private String level;
	private int grade;
	private String medium;
	private double fee;
	
	public Subject(String subject_code, String name, String level, int grade, String medium, double fee) {
		super();
		this.subject_code = subject_code;
		this.name = name;
		this.level = level;
		this.grade = grade;
		this.medium = medium;
		this.fee = fee;
	}

	public String getSubject_code() {
		return subject_code;
	}

	public String getName() {
		return name;
	}

	public String getLevel() {
		return level;
	}

	public int getGrade() {
		return grade;
	}

	public String getMedium() {
		return medium;
	}

	public double getFee() {
		return fee;
	}


}
