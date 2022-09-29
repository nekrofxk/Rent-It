<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="adminNavVehicle.jsp"/>
<div id="wrapper">
	<div id="header">
		<h2>RentIt Vehicle list</h2>
	</div>
</div>
<div id="container">

	<div id= content>
		
	<input type="button" value="add Vehicle"
		onclick="window.location.href='add-vehicle.jsp'; return false;"
		class="add-std-button"
		/>
		<table>
			<tr>
				<td>Vehicle No</td>
				<td>Vehicle model</td>
				<td>vehicle capacity</td>
				<td>driver name</td>
				<td>Action</td>
			</tr>
			<c:forEach var="tempvehicle" items="${VEHICLE_LIST }">
			
			<!--st up link for ecach vehicle-->
			
			<c:url var="templink" value="VehicleServ">
				<c:param name= "command" value="LOAD" />
				<c:param name="vehicleId" value="${tempvehicle.vehicleId}" />
			
			</c:url>
			
			<!--  set up  link to delete -->
			
			<c:url var="deletelink" value="VehicleServ">
				<c:param name= "command" value="DELETE" />
				<c:param name="vehicleId" value="${tempvehicle.vehicleId}" />
			
			</c:url>
			<tr>
				<td>${tempvehicle.vehicleNo }</td>
				<td>${tempvehicle.vehicleModel }</td>
				<td>${tempvehicle.vehicleCapacity }</td>
				<td>${tempvehicle.driverName}</td>
				<td>
					<a href="${templink}">Update</a>
					|
					<a href="${deletelink}" onclick="if(!(confirm('Are you sure you want to delete the enrty'))) return false">Delete</a>
				</td>
			</tr>
			
			
			</c:forEach>	
		</table>
	</div>
</div>

</body>
</html>