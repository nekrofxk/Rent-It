<%@page import="java.sql.*"%>
<jsp:include page="adminNav.jsp"/>
<h1>Payment Report</h1><br>

<%

	String id = request.getParameter("userId");
	String driverName = "com.mysql.jdbc.Driver";
	String URL = "jdbc:mysql://localhost:3306/rentit_database";
	String username = "root" ;
	String password = "root";
	
	try{
		Class.forName(driverName);
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

%>


<table>
<%
	try{
		connection = DriverManager.getConnection(URL, username, password);
		statement = connection.createStatement();
		String sql = "SELECT * FROM payment";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){%>
		
		
		
  <tr>
    <th>Payment ID</th>
    <th>Bank Name</th>
    <th>Card Holder</th>
    <th>Card Number</th>
    <th>Total Payment</th>
  </tr>
  <tr>
    <td><%=resultSet.getString("payment_id") %></td>
  
    <td><%=resultSet.getString("bankname") %></td>
 
   <td><%=resultSet.getString("cardname") %></td>
 
   <td><%=resultSet.getString("cardnumber") %></td>
  
   <td><%=resultSet.getString("price") %></td>
   
  </tr>
</table>


	
	<!DOCTYPE html>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<div>
<h3>Payment Report</h3>


</div>
</body>
</html>
	
<br><br><br>
<% 

}
} catch (Exception e) {
	e.printStackTrace();
}
%>
