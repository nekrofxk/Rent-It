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
<form action="SignUpServ" method="post" style="border:1px solid #ccc" >
<div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="fname"><b>First Name</b></label>
    <input type="text" placeholder="First Name" name="fname" required>

    <label for="lname"><b>Last Name</b></label>
    <input type="text" placeholder="Last Name" name="lname" required>

    <label for="email"><b>E-mail</b></label>
    <input type="text" placeholder="E-mail" name="email" required>
    
    <label for="nic"><b>NIC</b></label>
    <input type="text" placeholder="NIC" name="nic"  maxlength = 10 required>
    
    <label for="address"><b>Address</b></label>
    <input type="text" placeholder="Address" name="address" required>
    
    <label for="contactNo"><b>Contact Number</b></label>
    <input type="text" placeholder="Contact Number" name="contactNo" maxlength = 10 required>
    
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Username" name="username" required>
    
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Password" name="password"  id = "password "  required>
    
    <label for="psw-repeat"><b>Confirm Password</b></label>
    <input type="password" placeholder="Repeat Password" name="con_password"  id = "con_password" onsubmit = "validatePassword()" required>
    
    <label for="securityQ"><b>Security Question: What was the name of your primary school?</b></label>
    <input type="text" placeholder ="answer" name="securityQ" required>
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
      

    </div>
  </div>
 </form>

<script>

function validatePassword(){
	var password = document.form.password.value;
	var con_password = document.form.con_password.value;
		if(password != con_password){
			alert("password not matched");
		}
		return false
}
</script>

</body>
</html>