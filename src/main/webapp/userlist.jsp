<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
</head>
<body>
	<h3>User List</h3>
	<table>
		<tr>
			<td>Id&nbsp;&nbsp;&nbsp;</td>
			<td>UserName&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;EmailId&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<c:forEach var="c" items="${USER_LIST}" varStatus="i">
			<tr>
				<td>&nbsp;${c.id}&nbsp;</td>
				<td>&nbsp;${c.name}&nbsp;</td>
				<td>&nbsp;${c.emailId}&nbsp;</td>
			</tr>
		</c:forEach>
	</table>
<a href="../users/logout"> <h3>Logout</h3> </a>
</body>
	<h3>Delete User</h3>
	<form action="../users/delete" method="GET">
	UserId: <input type="text" name="userId" required placeholder="Enter a User Id"><br>
	<br><button type="submit">Delete</button></form>
</form>
</html>