<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Initialization</title>
</head>
<body>
<h3>Sign Up</h3>
<form action="/users/save">
UserName: <input type="text" name="Name" required autofocus placeholder="Enter your UserName"><br>
<br>Password: <input type="password" name="Password" required placeholder="Enter your password"><br>
<br>Email Id: <input type="email" name="EmailId" required placeholder="Enter your EmailId"><br>
<br><button type="submit">Submit</button> 
</form>
	${SIGNUP_ERROR}

<br>
	<h3>Login User</h3>
	<form action="/users/login">
		Email ID :&nbsp;&nbsp; <input type="email" name="emailid" required autofocus placeholder="Enter your EmailId"/> <br>
		<br>Password : <input type="password" name="password" required  placeholder="Enter your password"/><br>
		<br><button type="submit">Submit</button>
	</form>
	${LOGIN_ERROR}
</body>
</html>