<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Publish Article</h3>
	<form action="/articles/publish" method="GET">
		UserId : <input type="text" name="userId" >
		Title: <input type="text" name="title" >
		Content : <input type="text" name="content" >
		Category : <input type="text" name="catagory" >
		<button type="submit">Submit</button>
</form>
</body>
</html>
