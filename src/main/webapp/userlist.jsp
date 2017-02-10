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
<a href="/">Home</a>
	<h3>User List</h3>
	<table>
		<tr>
			<td>Id&nbsp;&nbsp;&nbsp;</td>
			<td>UserName&nbsp;&nbsp;&nbsp;</td>
			<td>Password&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;EmailId&nbsp;&nbsp;&nbsp;</td>
			<td>RoleId&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<c:forEach var="c" items="${USER_LIST}" varStatus="i">
			<tr>
				<td>&nbsp;${c.id}&nbsp;</td>
				<td>&nbsp;${c.name}&nbsp;</td>
				<td>&nbsp;${c.password}</td>
				<td>&nbsp;${c.emailId}&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;${(c.roleId).id}&nbsp;</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>