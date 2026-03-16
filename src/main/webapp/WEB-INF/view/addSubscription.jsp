<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

<title>Add Subscription</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">

<h2>Add Subscription</h2>

<form action="/subscriptions/add" method="post">

<label>Service Name</label>
<input type="text" name="serviceName">

<label>Subscription Amount</label>
<input type="number" name="amount">

<label>Billing Date</label>
<input type="date" name="renewalDate">

<label>Status</label>

<select name="status">

<option>Active</option>
<option>Expired</option>

</select>

<button type="submit">Add Subscription</button>

</form>

</div>

<%@ include file="footer.jsp" %>

</body>

</html>