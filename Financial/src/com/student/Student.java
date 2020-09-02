package com.student;

public class Student {
	
	private String subjectCode;
	private String name;
	private String level;

	public Student(String subjectCode, String name, String level) {
		this.subjectCode=subjectCode;
		this.name=name;
		this.level=level;
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
