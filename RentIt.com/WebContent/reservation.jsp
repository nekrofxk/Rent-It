<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/Form.css">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("customer_id")==null){
		
		response.sendRedirect("Login.jsp");	
	}
	
%>

<div>

 <form action="ReservationSer" method="post">
 <input type="hidden" name="vehicleId" value="${THE_VEHICLE.vehicleId}"/>
 <input type="hidden" name="customerId" value="<%=session.getAttribute("customer_id") %>">
<table>
 <tr>
 	<td>
 	<div class = service>
 	<label>Service Type</label>
  	<select name="service" required>
    <option value="selfdrive">SELF DRIVE</option>
    <option value="wedding">WEDDING AND EVENTS</option>
    <option value="tours">TOURS/ CHAUFFEUR DRIVEN</option>
    <option value="airport">AIRPORT/ CITY TRANSPORTS</option>
  	</select>
  	</div>
  	
  	<td>
  		<div class = location>
 	<label>Location</label>
  	<select name="location" required>
  		<option value="colombo">COLOMBO CITY</option>
  		<option value="airport">COLOMBO AIRPORT(BIA)</option>
  		<option value="other">OTHER</option>
  		</select>
  		</div>
  	</td>
  	
  		<tr>
	<td>
	<div class = date >
	<label>Vehicle No</label>
	<input type="text" name="vehicleNo" value="${ THE_VEHICLE.vehicleNo}" readonly required /><br>
	</div>
	</td>
	
	<td>
	<div class = time>
	<label>Vehicle model</label>
	<input type="text" name = "vehicleModel"value="${ THE_VEHICLE.vehicleModel}" readonly required/><br>
	</div>
	</td>
	</tr>
	
	<tr>
	<td>
	<div class = date >
	<label>Vehicle Capacity</label>
	<input type="text" name = "vehicleCapacity" value="${ THE_VEHICLE.vehicleCapacity}" readonly/><br>
	</div>
	</td>
	
	<td>
	<div class = time>
	<label>Driver Name</label>
	<input type="text" name = "driverName"  value="${ THE_VEHICLE.driverName}" readonly/><br>
	</div>
	</td>
	</tr>
 
  	</td>
	<td>
	<div class = date >
	<label>Pickup Date</label>
	<input type="date" name="pickUpDate" min="2018-05-11" required/><br>
	</div>
	</td>
	
	<td>
	<div class = time>
	<label>Pickup Time</label>
	<input type="time" name = "pickUpTime" required/><br>
	</div>
	</td>
	</tr>
	
	<tr>
	<td>
	<div class = date >
	<label>Return Date</label>
	<input type="date" name = "returnDate" min="2018-05-11"/><br>
	</div>
	</td>
	
	<td>
	<div class = time>
	<label>Return Time</label>
	<input type="time" name = "returnTime" /><br>
	</div>
	</td>
	</tr>
	
	
  	</table>

	<input type="submit" value="Submit">
	<input type="reset" value="Reset">
		
		
</form>
</div>

</body>
</html>