<%@page import="infinite.oyo.Room"%>
<%@page import="infinite.oyo.Booking"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="org.hibernate.cfg.Configuration"%>
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
	<form method="get" action="Billing2.jsp">
	<center>
		Enter Booking ID : 
		<input type="text" name="bookid" /> <Br/><br/>
		<input type="submit" value="Bill" />
	</center>
</form>

</body>
</html>