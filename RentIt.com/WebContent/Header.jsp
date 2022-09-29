<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel = "stylesheet" type = "text/css" href = "css/adminLogin.css">
	
	
</head>
<body>


<header id="header">
<nav class="topnav">
  <a class="active" href="index.jsp">HOME</a>
  <a href="FleetServ">FLEET</a>
  <a href="reservation.jsp">RESERVATION</a>
  <a href="contactus.jsp">Contact Us</a>
  <a href="aboutUs.jsp">ABOUT</a>
  
  
  
 <% if(((session.getAttribute("customer_id") == null)) || ((session.getAttribute("customer_id") == ""))) {
 %>
 <div class="dropdown">
  <button  onclick="myFunction()" class="dropbtn">Login</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="Login.jsp">Login</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div> 

 <%} else{%>

	Welcome<%=session.getAttribute("username")%>	 
 
<a href = "Logout.jsp">Logout</a>

<%} %>

</nav>
<div>

	<img  src="images/fontbanner.jpg">
		<div class="centered">Welcome To Rent<span class="sp2">It</span>.com <br>
			<span class="sp1">" THE ROYAL ESSENCE OF RELAXED JOURNEY EVER"</span><br><br>
			<button class="bf" id="myButton" onclick = "location.href = 'quote.jsp';">Get Quote</button>
		</div>
			
</div>
</header>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

<script type="text/javascript">
	ducument.getElementById("myButton").onclick = function(){
		location.href = "quote.jsp";
	}

</script>

</body>
</html>