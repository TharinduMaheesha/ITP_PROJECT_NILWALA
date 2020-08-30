package Model;

import java.sql.Blob;

public class SubjectClass {

	
	private String level , grade , key , date , start , end , video , quiz , subject , id ;
	private Blob path;

	public SubjectClass(String level, String grade, String key, String date, String start, String end , String subject) {
		super();
		this.level = level;
		this.grade = grade;
		this.key = key;
		this.date = date;
		this.start = start;
		this.end = end;
		this.subject = subject;
	}
	
	

	public SubjectClass() {
		super();
	}



	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}



	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}



	public String getQuiz() {
		return quiz;
	}



	public void setQuiz(String quiz) {
		this.quiz = quiz;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public Blob getPath() {
		return path;
	}



	public void setPath(Blob path) {
		this.path = path;
	}
	
	
	
	
	
	
}
