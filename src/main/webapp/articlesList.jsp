<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body><h3>Welcome ${LOGGED_USER.name}!!!</h3>
	<a href="../postArticle.jsp"> <h3>Post a new Article/View comment for article</h3></a>
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
	<h3>Comment an Article</h3> 
	<form action="/comments/save" method="GET">
				ArticleId: <input type="text" name="articleId" required placeholder="Enter an Article Id"><br>
	            <input type="hidden" name="userId" value="<%=session.getAttribute("LOGGED_USER") %>" ><br>
				Comment: <input type="text" name="comment" required placeholder="Enter a comment"><br>
				<br><button type="submit">Comment</button></form>
	</body>
		<a href="../users/logout"> <h3>Logout</h3></a>
	
</html>