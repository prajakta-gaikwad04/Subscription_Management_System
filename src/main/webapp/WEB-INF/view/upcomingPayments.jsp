<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

<title>Upcoming Payments</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>
	<%@ include file="header.jsp" %>
<div class="container">

<h2>Upcoming Subscription Payments</h2>

<table>

<tr>
<th>ID</th>
<th>Service Name</th>
<th>Amount</th>
<th>Renewal Date</th>
</tr>

<c:forEach items="${list}" var="sub">

<tr>

<td>${sub.id}</td>
<td>${sub.serviceName}</td>
<td>${sub.amount}</td>
<td>${sub.renewalDate}</td>

</tr>

</c:forEach>

</table>

<a href="/dashboard" class="back-btn">Back to Dashboard</a>

</div>
<%@ include file="footer.jsp" %>

</body>

</html>