<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "css/Login.css">
</head>
<body style="padding-top:50px;">
 
<div class="logoutN">
<form action="LogoutServ"  method=post>
<table class="tborder" width="50%" cellspacing="1" cellpadding="3" align="center">	
	<tr>
		<td colspan="2"> Are you sure you would like to logout?</td>			
	</tr>		
	<tr>
		<td> 
			<input type="submit" id="submit" name="submit" value="OK" class="hello"></input>
		</td>
		<td> 
			<input type="submit" id="submit" name="submit" value="Cancel" class="hello"></input>
		</td>
	</tr>
</table>
<br/>

</form>
<style>

.logoutN{
	width:50%;
	height:50%;
	padding:20px;
	background-color:#a7aaaf;
	padding-bottom:45px;    
	margin-left:25%;
	margin-top:15%;
	text-align:center;
	border-radius:5px;
	
}

.hello{
	margin-top:20px;
	padding:10px 30px;
	border-radius:5px;
	cursor: pointer;
}
.hello:hover {
  background-color: #56585b;
  color: #fff;


</style>



</body>
</html>