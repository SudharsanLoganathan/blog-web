<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comments List</title>
</head>
<body>
<h3>Comments</h3>
	<table>
		<tr>
			<td>USER NAME&nbsp;&nbsp;</td>
			<td>ARTICLE TITLE&nbsp;&nbsp;</td>
			<td>COMMENT&nbsp;&nbsp;</td>
			
		</tr>
	
		<c:forEach var="c" items="${COMMENTS_LIST}" varStatus="i">
			<tr>
				<td>${c.userId.name}</td>
				<td>${c.articleId.title}</td>
				<td>${c.comments}</td>
			</tr>
			 
		</c:forEach>
		
	</table>
</body>
</html>