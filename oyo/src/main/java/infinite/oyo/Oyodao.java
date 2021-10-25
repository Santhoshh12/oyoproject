package infinite.oyo;

import java.util.List;

//import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Oyodao {
	static SessionFactory sf;
	static Session s;
	static Query q;
	static {
		sf = SessionHelper.getFactory();
		s = sf.openSession();
	}

	public void insertbooking(Booking bk, String roomID) {
		Transaction t=s.beginTransaction();
		s.save(bk);
		t.commit();
		
		q=s.createQuery("from Room where roomID='"+roomID+"'");
		List<Room> roomList = q.list();
		Room r=roomList.get(0);
		Transaction t2=s.beginTransaction();
		r.setStatus(Status.BOOKED);
		s.save(r);
		t2.commit();
	}
	
	public List<Room> showavailroom(){
		q = s.createQuery("  from Room where status='AVAILABLE'");
		List<Room> lst=q.list();
		if(lst.isEmpty()) {
			return null;
		}else {
			return lst;
		}
	}
	
	public void insert(Room room) {
		Transaction t=s.beginTransaction();
		s.save(room);
		t.commit();
	}
	
	public String generateRoomNo() {
		q = s.createQuery(" from Room  ");
		List<Room> lst=q.list();
		if(lst.isEmpty()) {
			return "R000";
		}else {
			Room r=lst.get(lst.size()-1);
			String rid=r.getRoomID();
			int id =Integer.parseInt(rid.substring(1));
			id++;
			if (id >=1 && id <=9) {
				rid = "R00"+id;
			}
			if (id >=10 && id <=99) {
				rid="R0" +id;
			}
			if (id >=100 && id <= 999) {
				rid="R"+id;
			}
			return rid;
		}
		
	
			
	}
	
	public String generateBookID() {
		q = s.createQuery(" from Booking  ");
		List<Booking> lst=q.list();
		if(lst.isEmpty()) {
			return "B000";
		}else {
			Booking b =lst.get(lst.size()-1);
			String bid=b.getBookId();
			int id =Integer.parseInt(bid.substring(1));
			id++;
			if (id >=1 && id <=9) {
				bid = "B00"+id;
			}
			if (id >=10 && id <=99) {
				bid="B0" +id;
			}
			if (id >=100 && id <= 999) {
				bid="B"+id;
			}
			return bid;
		}
		
	
			
	}
}
