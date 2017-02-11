<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
	<a href="../postArticle.jsp"> <h3>Post a new Article</h3></a>
	<a href="../updateArticle.jsp"> <h3>Update/Delete an Article</h3></a>
		<h3>Published Articles</h3>
	<table>
		<tr>
			<td>ARTICLE ID&nbsp;&nbsp;</td>
			<td>TITLE&nbsp;&nbsp;</td>
			<td>CONTENT&nbsp;&nbsp;</td>
			<td>PUBLISHED DATE&nbsp;&nbsp;</td>
			
		</tr>
	
		<c:forEach var="c" items="${ARTICLE_LIST}" varStatus="i">
			<tr>
				<td>${c.id}</td>
				<td>${c.title}</td>
				<td>${c.content}</td>
				<td>${c.createdDate}</td>
			</tr>
		</c:forEach>
	</table> 
	</body>
</html>