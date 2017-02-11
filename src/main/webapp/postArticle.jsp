<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post an Article</title>
</head>
<body>
<h3>Post new Article</h3>

	<form action="/articles/publish" method="GET">
	    <input type="hidden" name="userId" value="<%=session.getAttribute("LOGGED_USER") %>" >
		Title: <input type="text" name="title" required autofocus placeholder="Enter Article Title"/>
		Content : <input type="text" name="content" required placeholder="Enter Article content"/>
		Category : <input type="text" name="catagory"  required placeholder="Enter Article Category"/>
		<button type="submit">Submit</button>
</form>
<h3>View comments for article </h3>
	<form action="/comments/viewCommentByArticle" method="GET">
		Title: <input type="text" name="title" required autofocus placeholder="Enter Article Title"/>
		<button type="submit">Submit</button>
</form>
</body>
</html>
