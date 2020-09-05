package com.student;

public class Student {
	

	private String studentID;
	private String subjectCode;
	private String name;
	private String level;

	public Student(String studentID,String subjectCode, String name, String level) {
		this.studentID=studentID;
		this.subjectCode=subjectCode;
		this.name=name;
		this.level=level;
	}
	
	public String getStudentID() {
		return studentID;
	}

	public String getSubjectCode() {
		return subjectCode;
	}
	public String getName() {
		return name;
	}
	public String getLevel() {
		return level;
	}

	
}
