<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

<title>My Subscriptions</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">

<h2>My Subscriptions</h2>

<table>

<tr>
<th>ID</th>
<th>Service</th>
<th>Amount</th>
<th>Billing Date</th>
<th>Status</th>
<th>Action</th>
</tr>

<c:forEach items="${list}" var="sub">

<tr>

<td>${sub.id}</td>
<td>${sub.serviceName}</td>
<td>${sub.amount}</td>
<td>${sub.renewalDate}</td>
<td>${sub.status}</td>

<td>

<a href="/subscriptions/edit/${sub.id}" class="action-btn edit">Edit</a>

<a href="/subscriptions/delete/${sub.id}" class="action-btn delete">Delete</a>

</td>

</tr>

</c:forEach>

</table>

</div>

<%@ include file="footer.jsp" %>

</body>

</html>