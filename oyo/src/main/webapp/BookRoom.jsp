<%@page import="infinite.oyo.Room"%>
<%@page import="infinite.oyo.Oyodao"%>
<%@page import="java.util.List"%>
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
<table border="3">
		<tr>
			<th>Room ID</th>
			<th>Room Type</th>
			<th>Cost Per Day</th>
			<th>Book</th>
		</tr>
<%
	List<Room> lst=new Oyodao().showavailroom();
	if(lst==null){
		out.println("No rooms available");
	}else{
		for(Room r : lst) {%>
			<tr>
		<td><%=r.getRoomID() %> </td>
		<td><%=r.getType() %>  </td>
		<td><%=r.getCostPerDay() %> </td>
		<td><a href="Book.jsp?roomno=<%=r.getRoomID() %>">Book</a></td>
	</tr>
		<% 
			
		}
	}
%>
</table>
</body>
</html>