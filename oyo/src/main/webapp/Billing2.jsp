<%@page import="infinite.oyo.Billing"%>
<%@page import="infinite.oyo.Status"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="infinite.oyo.Room"%>
<%@page import="infinite.oyo.Booking"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<%
	String bid=request.getParameter("bookid");
Configuration cfg = new AnnotationConfiguration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf = cfg.buildSessionFactory();

Session s = sf.openSession();
Query q=s.createQuery("from Booking where bookId='"+bid+"'");
List<Booking> bookList = q.list();
Booking b=bookList.get(0);
int days = (int) ((b.getChkOutDate().getTime() - b.getChkInDate().getTime()) / (1000 * 60 * 60 * 24));
days++;
 q=s.createQuery("from Room where roomID='"+b.getRoomID()+"'");
 List<Room> roomList = q.list();
 Room r=roomList.get(0);
 int amount=days*r.getCostPerDay();
 
	Transaction t2=s.beginTransaction();
	r.setStatus(Status.AVAILABLE);
	s.save(r);
	t2.commit();
	
	Billing bill=new Billing();
	bill.setBookID(bid);
	bill.setRoomID(b.getRoomID());
	bill.setNoOfDays(days);
	bill.setBillAmt(amount);
	
	Transaction t=s.beginTransaction();
	
	s.save(bill);
	t.commit();
 out.println("Total Bill is Rs "+amount);
	
%>
</body>
</html>