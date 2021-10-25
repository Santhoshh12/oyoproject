<%@page import="infinite.oyo.Room"%>
<%@page import="java.util.List"%>
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
	String bookid=new Oyodao().generateBookID();
%>
<form method="get" action="BookingInsert.jsp">
	<center>
		Book ID: 
		<input type="text" name="bookid" readonly="readonly" value="<%=bookid %>"/> <Br/><br/>
		Room ID : 
		<select name="roomid">
		<%
			List<Room> lst=new Oyodao().showavailroom();
		
			for(Room r : lst){%>
				<option value="<%= r.getRoomID()%>"><%=r.getRoomID() %></option>
			<% 
				
			}
		
		%>
		</select><br><br>
		
		Customer Name : 
		<input type="text" name="name" /> <br/><br/>
		City : 
		<input type="text" name="city" /> <br/><br/>
		Check In Date : 
		<input type="date" name="indate" /> <br/><br/>
		Check Out Date: 
		<input type="date" name="outdate" /> <br/><br/>
		<input type="submit" value="Book" />
	</center>
</form>
</body>
</html>