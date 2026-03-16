<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>Dashboard</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
	<%@ include file="header.jsp" %>
<div class="sd">
<h2 >Subscription Dashboard</h2>
</div>

<div class="container">

<div class="card">
<h3>Add Subscription</h3>
<a href="/subscriptions/add">Click Here</a>
</div>

<div class="card">
<h3>View Subscriptions</h3>
<a href="/subscriptions/view">Click Here</a>
</div>

<div class="card">
<h3>Logout</h3>
<a href="/logout">Logout</a>
</div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>