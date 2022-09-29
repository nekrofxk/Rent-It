<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<title>Fleet</title>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</head>
<body>
<jsp:include page="Header.jsp" />
<div class="search">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
</div>
	<c:forEach var="tempvehicle" items="${VEHICLE_LIST }">
			<c:url var="templink" value="FleetServ">
				<c:param name= "command1" value="LOAD" />
				<c:param name="vehicleId" value="${tempvehicle.vehicleId}" />
				
			
			</c:url>
				<div class="fleet">
					<table id="myTable">
				<tbody>
					<tr>
						<td><label>Vehicle No</label></td>
						<td>${tempvehicle.vehicleNo }</td>
					
					</tr>
					
					<tr>
						<td><label>Vehicle Model</label></td>
						<td>${tempvehicle.vehicleModel }</td>
					
					</tr>
					
					<tr>
						<td><label>Vehicle Capacity</label></td>
						<td>${tempvehicle.vehicleCapacity }</td>
					
					</tr>
					
					<tr>
						<td><label>Driver Name</label></td>
						<td>${tempvehicle.driverName }</td>
		
					</tr>
					<tr>
						<td><label></label></td>
						
						<td><div style="text-align:center"class="my_content_container"><a href="${templink}">Reserve Now</a></div></td>
						
		
					</tr>
				</tbody>
			</table>
					
				</div>
			<br><br>
	</c:forEach>
	<jsp:include page="Footer.jsp" />
</body>
</html>