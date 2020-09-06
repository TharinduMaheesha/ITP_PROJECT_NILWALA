package Model;

public class Transaction {


	private String transaction_id;
	private String description;
	private double amount;
	private String type;
	
	public Transaction(String transaction_id, String description, double amount, String type) {


		this.transaction_id = transaction_id;
		this.description = description;
		this.amount = amount;
		this.type = type;
	}


	
	public String getTransaction_id() {
		return transaction_id;
	}


	public String getDescription() {
		return description;
	}


	public double getAmount() {
		return amount;
	}

	

	public String getType() {
		return type;
	}

}
