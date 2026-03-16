<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
	<%@ include file="header.jsp" %>
<div class="container">

<h2>Login</h2>

<form action="/login" method="post">

<label>Email</label>
<input type="text" name="email" required/>

<label>Password</label>
<input type="password" name="password" required/>

<button type="submit">Login</button>

</form>

<p>Don't have account? <a href="/register">Register</a></p>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>