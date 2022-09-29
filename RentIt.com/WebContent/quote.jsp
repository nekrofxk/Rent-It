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

<div>

 <form action="review.jsp" method="get">
<table>
 <tr>
 
 	<td>
 	<div class = vehicle>
 	<label>Service Type</label>
  	<select name="vehicle" required>
    <option value="car">CAR</option>
    <option value="van">VAN</option>
    <option value="suv">SUV</option>
  	</select>
 	
 	</td>
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