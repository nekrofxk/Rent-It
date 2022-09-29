<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/Login.css">
<%@ page import="java.lang.Long" %>
<title>Insert title here</title>
</head>
<body>

<% String error = (String) request.getAttribute("Error");
if (error != null) {
	out.write("<center><strong>");
	out.write("<font color=\"Red\">");
	out.write(error);
	out.write("</font>");
	out.write("</strong></center>");
}
%>
<form class="modal-content" action="adminServ" method=post>
  <input name="lastLogon" type="hidden" value=""/>
    <div class="imgcontainer">
      <h3>Login to RentIt.com</h3>
    </div>

    <div class="container">
    <label for="username">User Name</label><br>
    <input type="text" name="username"  placeholder="user name" required><br>

    <label for="password">Password</label><br>
    <input type="password"  name="password"  placeholder="Password" required>  <br>
      
     
      <button type="submit" class="login-button1">Login</button><br>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">

	</div>

  </form>


</body>
</html>