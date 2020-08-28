package com.lesson;

public class TM_Lesson {
	private int teacher_id;
	private String subject_code;
	private int lesson_no;
	private String lesson_name;
	
	public TM_Lesson(int teacher_id,String subject_code, int lesson_no, String lesson_name) {
		super();
		this.teacher_id = teacher_id;
		this.subject_code = subject_code;
		this.lesson_no = lesson_no;
		this.lesson_name = lesson_name;
	}
	
		public int getTId() {
	        return teacher_id;
	    }

	    public String getScode() {
	        return subject_code;
	    }

	    public int getLNo() {
	        return lesson_no;
	    }
	    
	    public String getLname() {
	        return lesson_name;
	    }
}