<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<title>Subscriptions</title>

<link rel="stylesheet" href="/css/style.css">

</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">

<h2>My Subscriptions</h2>

<!-- SEARCH BAR -->

<form action="/subscriptions/list" method="get" class="search-form">

<input type="text" name="keyword" placeholder="Search by service name">

<button type="submit">Search</button>

</form>


<!-- FILTER -->

<form action="/subscriptions/list" method="get" class="filter-form">

<select name="status">

<option value="">All</option>

<option value="Active">Active</option>

<option value="Expired">Expired</option>

</select>

<button type="submit">Filter</button>

</form>


<a href="/subscriptions/add" class="add-btn">+ Add Subscription</a>


<table>

<tr>

<th>ID</th>

<th>Service</th>

<th>Amount</th>

<th>Billing Date</th>

<th>Status</th>

<th>Actions</th>

</tr>


<c:forEach var="s" items="${subscriptions}">

<tr>

<td>${s.id}</td>

<td>${s.serviceName}</td>

<td>${s.amount}</td>

<td>${s.renewalDate}</td>

<td>${s.status}</td>

<td>

<a href="/subscriptions/edit/${s.id}" class="edit-btn">Edit</a>

<a href="/subscriptions/delete/${s.id}" class="delete-btn">Delete</a>

</td>

</tr>

</c:forEach>

</table>

</div>
<%@ include file="footer.jsp" %>

</body>

</html>