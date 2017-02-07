<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/">Home</a>
	<h3>User List JSP</h3>
	<table>
		<tr>
			<td>Id</td>
			<td>UserName</td>
			<td>password</td>
			<td>emailId</td>
			<td>roleId</td>
		</tr>
		<c:forEach var="c" items="${USER_LIST}" varStatus="i">
			<tr>
				<td>${c.id}</td>
				<td>${c.name}</td>
				<td>${c.password}</td>
				<td>${c.emailId}</td>
				<td>${c.roleId.id}</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>