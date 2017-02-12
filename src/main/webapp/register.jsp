<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Initialization</title>
</head>
<body>
<h3>Sign Up</h3>
<form action="/users/save">
UserName: <input type="text" name="Name" required autofocus><br>
<br>Password: <input type="password" name="Password" required><br>
<br>Email Id: <input type="text" name="EmailId" required><br>
<br><button type="submit">Submit</button> 
</form>
	${SIGNUP_ERROR}

<br>
	<h3>Login User</h3>
	<form action="/users/login">
		Email ID :&nbsp;&nbsp; <input type="text" name="emailid" required autofocus /> <br>
		<br>Password : <input type="password" name="password" required  /><br>
		<br><button type="submit">Submit</button>
	</form>
	${LOGIN_ERROR}
</body>
</html>