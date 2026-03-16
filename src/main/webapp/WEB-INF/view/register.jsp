<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
	<%@ include file="header.jsp" %>
<div class="container">

<h2>User Registration</h2>

<form action="/register" method="post">

<label>Name</label>
<input type="text" name="name" required/>

<label>Email</label>
<input type="text" name="email" required/>

<label>Password</label>
<input type="password" name="password" required/>

<button type="submit">Register</button>

</form>

<p>Already have account? <a href="/login">Login</a></p>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>