<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Article</title>
</head>
<body>
<h3>Update an Article</h3>
<form action="/articles/update">
<br>Article ID: <input type="text" name="articleId" required autofocus /><br>
<br>Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="title" required><br>
<br>Content:&nbsp;&nbsp;    <input type="text" name="content" required><br>
<br><button type="submit">Submit</button> 
</form>
	${UPDATE_ERROR}
<h3>Delete an Article</h3>
<form action="/articles/delete">
<br>Article ID: <input type="text" name="articleId" required ><br>
<br><button type="submit">Submit</button> 
</form>
	${DELETE_ERROR}
</body>
</html>