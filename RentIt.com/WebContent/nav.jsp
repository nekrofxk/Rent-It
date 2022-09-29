<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel = "stylesheet" type = "text/css" href = "css/Login.css">
</head>
<body>
	<header id="header">
	<nav class="topnav">
  <a class="active" href="index.jsp">HOME</a>
  <a href="FleetServ">FLEET</a>
  <a href="reservation.jsp">RESERVATION</a>
  <a href="contactus.jsp">SERVICES</a>
  <a href="aboutUs.jsp">ABOUT</a>
  
  
  <div class = "login-button">
  	<%
		if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
	%>
	<a href="Login.jsp">Login</a>
	<%} else {
	%>
	Welcome <%=session.getAttribute("username")%>
	<a href='Logout.jsp'>Log out</a>
	<%
	}
	%>
  
</div>	
  
  
</nav>
</header>
</body>
</html>