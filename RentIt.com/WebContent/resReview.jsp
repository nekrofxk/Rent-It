<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if(session.getAttribute("customer_id")==null){
		
		response.sendRedirect("Login.jsp");	
	}
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/review.css">
<title>Insert title here</title>
</head>
<body bgcolor="#ef9628">

<%

	try{
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentit_database","root","root");
	Statement stmt=conn.createStatement();
	
	String sql="SELECT v.vehicle_id, v.vehicleCapacity, v.vehicleNo , v.vehicleDriver,v.vehicleModel, r.reservation_id,r.service FROM vehicle v,reservation r where v.vehicle_id =r.vehicle_id AND r.customer_id = "+session.getAttribute("customer_id");
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next()){
		int reservationId=rs.getInt("reservation_id");
		
	
%>	
	

<% 	
		Double payment = 0.00;
		switch(rs.getString("vehicleModel")){

	case("CAR"):{
		
		switch(rs.getString("service")){

			case("selfdrive"):{

				payment = 15000.00;
				break;
			}

			case("wedding"):{
			
				payment = 20000.00;
				break;
			}

			case("tours"):{
				payment = 5000.00;
				break;
			}

			case("airport"):{
				payment = 1000.00;
				break;
			}
		}
		
		break;
		
	}

	case("VAN"):{

		switch(rs.getString("service")){

			case("selfdrive"):{

				payment = 20000.00;
				break;
			}

			case("wedding"):{
			
				payment =20000.00;
				break;
			}

			case("tours"):{
				payment = 5000.00;
				break;
			}

			case("airport"):{
				payment = 1000.00;
				break;
			}
		}
		
		break;

	}

	case("SUV"):{
			
		switch(rs.getString("service")){

			case("selfdrive"):{

				payment = 25000.00;
				break;
			}

			case("wedding"):{
			
				payment = 30000.00;
				break;
			}

			case("tours"):{
				payment = 5000.00;
				break;
			}

			case("airport"):{
				payment = 1000.00;
				break;
			}
		}
	}
	
	break;


}

%>
<form action="paymentForm.jsp" method="post">
<div class = "box">
	<table align = "center">
	
	<div class = "head">
	<h2 align = "center">Review</h2>
	</div>
	
	<tr>
	<td>Vehicle type :</td>
	<div class = "row">
	<td>
	<h2><%=rs.getString("vehicleModel") %></h2>
	</td>
	</div>
	</tr>
	
	
	<tr>
	<td>Vehicle Number    :</td>
	<div class = "row">
	<td>
	<h2><%= rs.getString("vehicleNo")%></h2>
	</td>
	</div>
	</tr>
	
	
	<tr>
	<td>Service Type    :</td>
	<div class = "row">
	<td>
	<h2><%= rs.getString("service")%></h2>
	</td>
	</div>
	</tr>
	
	<tr>
	<td>Advance payment :</td>
	<div class = "row">
	<td>
	<h2><%=payment%></h2>
	
	</td>
	</div>
	</tr>
	
	</table>
	
	<div class = "button">
	<button onclick="goBack()">Go Back</button>
	<input type="hidden" value="<%=reservationId %>" name="reservationId">
	<input type="hidden" value="<%=payment%>" name="payment">
	<input type="submit" value="Pay Now">
	</div>
	</form>
	<script>
	function goBack() {
    window.history.back();
	}
	</script>
<% 
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>
	
</div>
</body>
</html>