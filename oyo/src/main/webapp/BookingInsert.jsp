
<%@page import="infinite.oyo.Oyodao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="infinite.oyo.Booking"%>
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
	Booking bk=new Booking();
bk.setBookId(request.getParameter("bookid"));
bk.setRoomID(request.getParameter("roomid"));
bk.setCustName(request.getParameter("name"));
bk.setCity(request.getParameter("city"));
String indate=request.getParameter("indate");
java.sql.Date idate= java.sql.Date.valueOf(indate);
String outdate=request.getParameter("outdate");
java.sql.Date odate= java.sql.Date.valueOf(outdate);
bk.setChkInDate(idate);
bk.setChkOutDate(odate);
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String today=sdf.format(new Date());
bk.setBookDate(java.sql.Date.valueOf(today));

Oyodao dao=new Oyodao();
dao.insertbooking(bk, bk.getRoomID());
out.println("Room booked");
%>
</body>
</html>