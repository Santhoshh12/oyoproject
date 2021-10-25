<%@page import="infinite.oyo.Oyodao"%>
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
	String roomid=new Oyodao().generateRoomNo();
%>
	<form method="get" action="RoomInsert.jsp">
	<center>
		Room No : 
		<input type="text" name="roomno" value="<%= roomid%>" readonly="readonly"/> <Br/><br/>
		Room Type : 
		<input type="text" name="type" /> <br/><br/>
		Cost Per Day : 
		<input type="number" name="cost" /> <br/><br/>
		<input type="submit" value="Insert" />
	</center>
</form>
</body>
</html>