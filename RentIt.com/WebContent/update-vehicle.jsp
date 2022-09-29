<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type ="text/css" rel="stylesheet" href="css/style.css">
<link type ="text/css" rel="stylesheet" href="css/add-vehicle-form.css">
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Rentit Vehicle list</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Update Vehicle</h3>
		
		<form action="VehicleServ" method="GET">
			
			<input type="hidden" name="command" value="UPDATE"/>
		
			<input type="hidden" name="vehicleId" value="${THE_VEHICLE.vehicleId}"/>
			<table>
				<tbody>
					<tr>
						<td><label>Vehicle No</label></td>
						<td><input type="text" name="vehicleNo" value= "${ THE_VEHICLE.vehicleNo}" maxlength="8"/></td>
					
					</tr>
					
					<tr>
						<td><label>Vehicle Model</label></td>
						<td><input type="text" name="vehicleModel" value= "${ THE_VEHICLE.vehicleModel}"/></td>
					
					</tr>
					
					<tr>
						<td><label>Vehicle Capacity</label></td>
						<td><input type="text" name="vehicleCapacity" value= "${ THE_VEHICLE.vehicleCapacity}"/></td>
					
					</tr>
					
					<tr>
						<td><label>Driver Name</label></td>
						<td><input type="text" name="driverName" value= "${ THE_VEHICLE.driverName}"/></td>
		
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class ="save"/></td>
						
					</tr>
				</tbody>
			</table>
		</form>
	
		<div style="clear : both;"></div>
			
	<p>
		<a href="VehicleServ"> <-Back to the list</a>
	</p>
	
	
	</div>
</body>
</html>