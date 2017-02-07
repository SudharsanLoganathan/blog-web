<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Sign Up</h3>
<form action="/users/save">
UserName: <input type="text" name="Name" ><br>
<br>Password: <input type="password" name="Password" ><br>
<br>Email Id: <input type="text" name="Email" ><br>
<br>Role Id: <input type="text" name="RoleId" ><br>
<br><button type="submit">Submit</button> 
</form>
<br>
	<h3>Login User</h3>
	<form action="users/login" method="GET">
		UserName: <input type="text" name="userName" > <br>
		<br>Password : <input type="password" name="password" ><br>
		<br><button type="submit">Submit</button>
	</form>

</body>
</html>