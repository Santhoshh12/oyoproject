package infinite.oyo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="booking")
public class Booking {
	
	@Id
	@Column(name="bookId")
	private String bookId;
	
	@Column(name="roomID")
	private String roomID;
	
	@Column(name="custName")
	private String custName;
	
	@Column(name="city")
	private String city;
	
	@Column(name="bookDate")
	private Date bookDate;
	
	@Column(name="chkInDate")
	private Date chkInDate;
	
	@Column(name="chkOutDate")
	private Date chkOutDate;

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Date getBookDate() {
		return bookDate;
	}

	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}

	public Date getChkInDate() {
		return chkInDate;
	}

	public void setChkInDate(Date chkInDate) {
		this.chkInDate = chkInDate;
	}

	public Date getChkOutDate() {
		return chkOutDate;
	}

	public void setChkOutDate(Date chkOutDate) {
		this.chkOutDate = chkOutDate;
	}
	
	
}
