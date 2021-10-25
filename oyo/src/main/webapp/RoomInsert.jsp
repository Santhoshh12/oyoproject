<%@page import="infinite.oyo.Status"%>
<%@page import="infinite.oyo.Oyodao"%>
<%@page import="infinite.oyo.Room"%>
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
	Room room =new Room();
room.setRoomID(request.getParameter("roomno"));
room.setType(request.getParameter("type"));
room.setStatus(Status.AVAILABLE);
room.setCostPerDay(Integer.parseInt(request.getParameter("cost")));
Oyodao dao=new Oyodao();
dao.insert(room);
out.println("<br>Room inserted <Br>");
%>

</body>
</html>