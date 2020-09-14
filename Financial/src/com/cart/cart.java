package com.cart;


public class cart {
	private int student_id;
	private String subject_code;
	private String name;
	private String level;
	private String studentid;
	
	private int levelCount;

	int totfee=0;


public cart(int student_id, String subject_code, String name, String level) {
	this.student_id = student_id;
	this.subject_code = subject_code;
	this.name = name;
	this.level = level;
}

public int getStudentID() {
	return student_id;
}

public String getSubjectCode() {
return subject_code;
}

public String getName() {
return name;
}

public String getLevel() {
return level;
}

public String getStudentid() {
return studentid;
}

public void setStudentid(String studentid) {
this.studentid = studentid;
}

public int getLevelCount() {
	return levelCount;
}

}