package Model;

public class Salary {
	

	
	private int teacher_id;
	private String transaction_id;
	private double amount;
	
	
	public Salary(int teacher_id, String transaction_id, double amount) {
	
		this.teacher_id = teacher_id;
		this.transaction_id = transaction_id;
		this.amount = amount;
	}
	
	public int getTeacher_id() {
		return teacher_id;
	}


	
	public String getTransaction_id() {
		return transaction_id;
	}


	public double getAmount() {
		return amount;
	}

}
