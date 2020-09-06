package com.lesson;

public class TM_LMaterial {

	private int teacher_id;
	private String subject_code;
	private int lesson_no;
	private String material;
	private String slesson;
	private String steacher_id;

	
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

	public String getSlesson() {
		return slesson;
	}

	public void setSlesson(String slesson) {
		this.slesson = slesson;
	}

	public String getSteacher_id() {
		return steacher_id;
	}

	public void setSteacher_id(String steacher_id) {
		this.steacher_id = steacher_id;
	}
	
	

	
	

}
