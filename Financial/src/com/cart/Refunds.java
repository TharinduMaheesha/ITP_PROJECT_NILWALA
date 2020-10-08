package com.cart;

public class Refunds {
	

	private String date;
	private int refID;
	private String reason;
	private String status;
	private int studentID;
	
	
	public Refunds(String date,int refID, String reason,String status, int studentID) {
		this.date=date;
		this.refID = refID;
		this.reason = reason;
		this.status=status;
		this.studentID = studentID;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getRefID() {
		return refID;
	}
	public void setRefID(int refID) {
		this.refID = refID;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getStudentID() {
		return studentID;
	}
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}
	
}
