<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comments</title>
</head>
<body>
	<table>
		<tr>
			<td>TITLE&nbsp;&nbsp;</td>
			<td>COMMENT&nbsp;&nbsp;</td>
			
		</tr>
	
		<c:forEach var="c" items="${COMMENT_LIST}" varStatus="i">
			<tr>
				<td>${c.articleId.title}</td>
				<td>${c.comments}</td>
			</tr>
			 
		</c:forEach>
		
	</table>
</body>
</html>