
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Payment</title>
<%
	if(session.getAttribute("customer_id")==null){
		
		response.sendRedirect("Login.jsp");	
	}
	
%>

</head>
<body>
<div   >
	
      <form action="payment1Serv" method="post">
      <link rel="stylesheet" href="css/payment1.css"  type="text/css">
		<div style="text-align: center" >
            <h3>Payment</h3>
            <input type="hidden" value="${param.reservationId}" name="reservationId">
            <input type="hidden" name="customerId" value="<%=session.getAttribute("customer_id") %>">
             <label for="bname">Bank</label>
            <input type="text" id="bname" name="bankname" placeholder="Sampath Bank" required>
            
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Piumika Pathirana" required>
            
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
            
            <div class="divv">
            <label for="month">Exp Month/Year</label>
            <input   id="month" type="month" name="expdate" required><br>
           
            <br>
            
            <label for="cvv">CVV</label>
            <input type="text" id="ccv" name="ccv" placeholder="352" required>
            <br>
            
            <label for="cvv">Total Payment</label>
            <input type="text" id="price" name="price" value="${param.payment}" readonly  >
            <br>
            
			<div >
                    
       		<label style="text-align: center" >
        	<input  type="submit" value="Continue Payment" class="btn">
      		</label>
      		</div>
      </form>
      <form action="payment1_respondtest.jsp">
      	<label style="text-align: center">
       		 <input  type="submit" value="Back" class="btn">
     		 </label>    
      </form>
   
  </div>
</body>
</html>