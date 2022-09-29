<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/SignUp.css">
<link rel = "stylesheet" type = "text/css" href = "css/Login.css">

<title>Insert title here</title>
</head>
<body>
<form action="PasswordResetServ" method="post" style="border:1px solid #ccc" >


<div class="container">
      <h3>Enter the answer for the security question</h3>
</div>

  <div class="container">
      <label for="securityQ"><b>Answer</b></label>
      
      <input type="text" placeholder="answer" id="securityQ" name="securityQ" required>
      
      <label for="username">User Name</label><br>
      <input type="text" name="username"  placeholder="username" required><br>
      
      <div class="su"><button>Next</button></div>
</div>
</form>

</body>
</html>