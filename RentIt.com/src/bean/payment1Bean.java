package bean;

public class payment1Bean {

	private int payment_id;
	private String bankname;
	private String cardname;
	private String cardnumber;
	private float price;
	private int customerId;
	private int reservationId;
	
	
	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public payment1Bean(int payment_id, String bankname, String cardname, float price) {
		
		this.payment_id = payment_id;
		this.bankname = bankname;
		this.cardname = cardname;
		//this.cardnumber = cardnumber;
		this.price = price;
		
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public payment1Bean(int reservationId,int customerId,String bankname, String cardname, String cardnumber, float price) {
		
		
		this.bankname = bankname;
		this.cardname = cardname;
		this.cardnumber = cardnumber;
		this.customerId= customerId;
		this.reservationId= reservationId;
		this.price = price;
	}
	
	public payment1Bean(float price) {
		this.price = price;
	}

	
	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getCardname() {
		return cardname;
	}

	public void setCardname(String cardname) {
		this.cardname = cardname;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
