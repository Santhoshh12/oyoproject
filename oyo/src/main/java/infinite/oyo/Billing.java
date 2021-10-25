package infinite.oyo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="billing")
public class Billing {
	
	@Id
	@Column(name="billID")
	private int billID;
	
	@Column(name="bookID")
	private String bookID;
	
	@Column(name="roomID")
	private String roomID;
	
	@Column(name="noOfDays")
	private int noOfDays;
	
	@Column(name="billAmt")
	private int billAmt;

	public int getBillID() {
		return billID;
	}

	public void setBillID(int billID) {
		this.billID = billID;
	}

	public String getBookID() {
		return bookID;
	}

	public void setBookID(String bookID) {
		this.bookID = bookID;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public int getNoOfDays() {
		return noOfDays;
	}

	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}

	public int getBillAmt() {
		return billAmt;
	}

	public void setBillAmt(int billAmt) {
		this.billAmt = billAmt;
	}
	
	
}
