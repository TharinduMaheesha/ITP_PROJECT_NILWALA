package Model;

public class SubjectClass {

	
	private String level , grade , key , date , start , end , video , quiz;

	public SubjectClass(String level, String grade, String key, String date, String start, String end) {
		super();
		this.level = level;
		this.grade = grade;
		this.key = key;
		this.date = date;
		this.start = start;
		this.end = end;
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
	
	
	
	
	
}
