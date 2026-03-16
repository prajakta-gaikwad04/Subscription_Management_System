<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

<title>Edit Subscription</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">

<h2>Edit Subscription</h2>

<form action="/subscriptions/update" method="post">

<input type="hidden" name="id" value="${sub.id}">

<label>Service Name</label>
<input type="text" name="serviceName" value="${sub.serviceName}">

<label>Amount</label>
<input type="number" name="amount" value="${sub.amount}">

<label>Billing Date</label>
<input type="date" name="renewalDate" value="${sub.renewalDate}">

<label>Status</label>

<select name="status">

<option ${sub.status=='Active'?'selected':''}>Active</option>
<option ${sub.status=='Expired'?'selected':''}>Expired</option>

</select>

<button type="submit">Update</button>

</form>

</div>

<%@ include file="footer.jsp" %>

</body>

</html>