package com.lesson;

public class TM_LMaterial {

	private int teacher_id;
	private String subject_code;
	private int lesson_no;
	private String material;
	
	public TM_LMaterial(int teacher_id, String subject_code, int lesson_no, String material) {
		super();
		this.teacher_id = teacher_id;
		this.subject_code = subject_code;
		this.lesson_no = lesson_no;
		this.material = material;
	}

	public int getTeacher_id() {
		return teacher_id;
	}

	
	public String getSubject_code() {
		return subject_code;
	}


	public int getLesson_no() {
		return lesson_no;
	}


	public String getMaterial() {
		return material;
	}

	
	

}
