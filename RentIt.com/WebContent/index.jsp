<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RentIt</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	
	
</head>
<body>
<jsp:include page="Header.jsp" /> 

<div class="row">
  <div class="column" >
    <h1><i>Welcome to RentIt.com</i></h1>
    <h2>Premier car rental service in SriLanka</h2>
	<h3>
	With over 20 years of experience we thrive to
	give each and every customer a highly
	personalised service.We have the best fleets
	and the best renting prices.We are offering
	a fully fledged mechanical service and valet
	service.We have a dedicated team striving to 
	give you the best services.
    <pre></pre>
    RentIt.com continues to maintain its image and 
    reputation as the specialists in rent a car
    business in SriLanka besides being the leading
    budget rent a car company in the island as well.
    </h3>
    <h2><b>Rent your car now.</b></h2>
   
    <button class = "bf">More Details</button>
  </div>
  <div class="column">
    <img src="images/DSC_0633.jpg" alt="wedding" style="width:100%">
  </div>
</div>

<div>
  <img class="img1" src="images/used-cars-plantation-1.jpg" style = "height:500px" >
  <div class="text-block">
    <h2>Services</h2>
    <h3>Our services are made for any<br> 
    type of transportation service you need</h3>
    <p>Self Drive</p>
    <p>Weddings</p>
    <p>Road Side Assistance</p>
    <p>Garage Services</p>
    
  </div>
</div>

<jsp:include page="Footer.jsp" />
</body>
</html>