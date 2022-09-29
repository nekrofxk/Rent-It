<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/review.css">
<title>Insert title here</title>
</head>
<body bgcolor="#ef9628">

<%

	String vehicle = request.getParameter("vehicle");
	String service = request.getParameter("service");
	String location = request.getParameter("location");
	String pickUpDate = request.getParameter("pickUpDate");
	String pickUpTime = request.getParameter("pickUpTime");
	String returnDate = request.getParameter("returnDate");
	String returnTime = request.getParameter("returnTime");
	double payment=0;
	


		switch(vehicle){

	case("car"):{
		
		switch(service){

			case("selfdrive"):{

				payment = 15000;
				break;
			}

			case("wedding"):{
			
				payment = 20000;
				break;
			}

			case("tours"):{
				payment = 5000;
				break;
			}

			case("airport"):{
				payment = 1000;
				break;
			}
		}
		
		break;
		
	}

	case("van"):{

		switch(service){

			case("selfdrive"):{

				payment = 20000;
				break;
			}

			case("wedding"):{
			
				payment =20000;
				break;
			}

			case("tours"):{
				payment = 5000;
				break;
			}

			case("airport"):{
				payment = 1000;
				break;
			}
		}
		
		break;

	}

	case("suv"):{
			
		switch(service){

			case("selfdrive"):{

				payment = 25000;
				break;
			}

			case("wedding"):{
			
				payment = 30000;
				break;
			}

			case("tours"):{
				payment = 5000;
				break;
			}

			case("airport"):{
				payment = 1000;
				break;
			}
		}
	}
	
	break;


}

%>	

<div class = "box">
	<table align = "center">
	
	<div class = "head">
	<h2 align = "center">Review</h2>
	
	</div>
	
	
	
	<tr>
	<td>Vehicle type :</td>
	<div class = "row">
	<td>
	<h2><%= vehicle%></h2>
	</td>
	</div>
	</tr>
	
	<tr>
	<td>Service Type    :</td>
	<div class = "row">
	<td>
	<h2><%= service%></h2>
	</td>
	</div>
	</tr>
	
	<tr>
	<td>Advance payment :</td>
	<div class = "row">
	<td>
	<h2><%= payment%></h2>
	</td>
	</div>
	</tr>
	
	</table>
	
	<div class = "button">
	<button onclick="goBack()">Go Back</button>
	</div>

	<script>
	function goBack() {
    window.history.back();
	}
	</script>
	
	
</div>
</body>
</html>