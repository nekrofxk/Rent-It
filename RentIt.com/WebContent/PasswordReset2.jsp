<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href = "css/SignUp.css">
<title>Insert title here</title>
</head>
<body>
	
	<form action="PasswordResetServ2" method="post" style="border:1px solid #ccc" >
<div class="container">
    <h1>Please reset your password</h1>
    <hr>
    
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="username" name="username" required>
        
    <label for="newPassword"><b>New Password</b></label>
    <input type="password" placeholder="New Password" name="newPassword"  id = "password"required>

    <label for="conpass"><b>Confirm Password</b></label>
    <input type="password" placeholder="Repeat Password" name="conpass" id = "conpass"  onsubmit =" validatePassword()" required>
    
     <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Reset Password</button>
    </div>
    
</div>
</form>

<script>
function validatePassword(){
	var password = document.form.password.value;
	var con_password = document.form.conpass.value;
		if(password != con_password){
			alert("password not matched");
		}
		return false
}
</script>

</body>
</html>