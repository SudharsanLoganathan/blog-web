<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Articles</title>
</head>
<body>
	<h3>Articles List</h3>
	<table>
		<tr>
			<td>Id&nbsp;&nbsp;&nbsp;</td>
			<td>User Name&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;Title&nbsp;&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;Content&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;Created Date&nbsp;&nbsp;</td>
			<td>&nbsp;&nbsp;Modified Date&nbsp;&nbsp;</td>
			</tr>
		<c:forEach var="c" items="${ARTICLES_LIST}" varStatus="i">
			<tr>
				<td>&nbsp;${c.id}&nbsp;</td>
				<td>&nbsp;${c.userId.name}&nbsp;</td>
				<td>&nbsp;${c.title}&nbsp;</td>
				<td>&nbsp;${c.content}&nbsp;</td>
				<td>&nbsp;${c.createdDate}&nbsp;</td>
				<td>&nbsp;${c.modifiedDate}&nbsp;</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>