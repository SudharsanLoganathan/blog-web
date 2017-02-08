
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Sign Up</h3>
<form action="/users/save">
UserName: <input type="text" name="Name" required autofocus><br>
<br>Password: <input type="password" name="Password" required><br>
<br>Email Id: <input type="text" name="EmailId" required><br>
<br>Role Id: <input type="text" name="RoleId" required><br>
<br><button type="submit">Submit</button> 
</form>
<br>
	<h3>Login User</h3>
	<form action="/users/login">
		Email ID :&nbsp;&nbsp; <input type="text" name="emailID" required autofocus /> <br>
		<br>Password : <input type="password" name="password" required  /><br>
		<br><button type="submit">Submit</button>
	</form>
</body>
</html>