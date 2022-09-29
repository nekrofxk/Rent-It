<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/payment1.css"  type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

option {
 position: relative;
  font-family: Arial;
color: #ffffff;
  padding: 8px 16px;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  position: absolute;
  background-color: green;
  top: 100%;
   right: 50%;
  
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
    
}
.form-control{
width:20%;
border-radius:5px;
padding:10px;
margin-top:10px;

}

</style>
<%
	if(session.getAttribute("admin_id")==null){
		
		response.sendRedirect("adminLogin.jsp");	
	}
	
%>
</head>
<body>
<jsp:include page="adminNav.jsp"/>
<form action="paramReport.jsp" name ="form" method="post" >
	<div>
	
	<select class="form-control " name= "startdate" ><option value="0">start date</option>
	<% 
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentit_database","root","root");
		Statement stmt1=conn1.createStatement();
		//need to code
		ResultSet rs1=stmt1.executeQuery("select distinct ts from payment");
		
		while(rs1.next()){
			
			%>
			<option value="<%=rs1.getDate("ts")%>"><%=rs1.getDate("ts") %></option>
			
			<%
		}
	}
	catch(Exception ex){
		
		ex.printStackTrace();
	}
	
	
	
	%>
	</select>
	
	<select class="form-control " name= "enddate" onchange="this.form.submit();"><option value="0">end  date</option>
	<% 
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentit_database","root","root");
		Statement stmt1=conn1.createStatement();
		//need to code
		ResultSet rs1=stmt1.executeQuery("select distinct ts from payment");
		
		while(rs1.next()){
			
			%>
			<option value="<%=rs1.getDate("ts")%>"><%=rs1.getDate("ts") %></option>
			
			<%
		}
		
		
		
		
	}
	catch(Exception ex){
		
		ex.printStackTrace();
	}
	
	
	
	%>
	</select><br><br><br>
	<table class="table">
	
		<tr>
			<th>Bank name</th>
			<th>Card name</th>
			<th>amount</th>
		</tr>
		<%
		String sDate=request.getParameter("startdate");
		String eDate=request.getParameter("enddate");
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentit_database","root","root");
			Statement stmt=conn.createStatement();
			String sql="Select bankname,cardname,price From payment where ts between  '"+sDate+"' and '"+eDate+"' ";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				%>
				<tr>
			<th><%=rs.getString("bankname") %></th>
			<th><%=rs.getString("cardname")%></th>
			<th><%=rs.getString("price")%></th>
				</tr>
				
				<% 	
				
			}
			conn.close();
			rs.close();
			
		}
		catch(Exception exc){
			exc.printStackTrace();
		}
		
		
		%>
			
	
	
	</table>

	</div>
	</form>
</body>
</html>