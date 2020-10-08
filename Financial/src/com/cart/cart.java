package com.cart;


public class cart {
	private String student_id;
	private String subject_code;
	private String name;
	private String level;
	private String studentid;


public cart(String subject_code, String name, String level) {
	//this.student_id = student_id;
	this.subject_code = subject_code;
	this.name = name;
	this.level = level;
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


public cart(String student_id){
	this.student_id=student_id;
	
}

public int getStudentid() {
	int idd = Integer.parseInt(student_id);
	
	return idd;
}


}