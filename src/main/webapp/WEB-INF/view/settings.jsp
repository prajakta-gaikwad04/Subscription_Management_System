<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<title>Settings</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">

<h2>Account Settings</h2>

<form action="/settings/update" method="post">

<input type="hidden" name="id" value="${user.id}">

<label>Full Name</label>

<input type="text" name="name" value="${user.name}">

<label>Email</label>

<input type="email" name="email" value="${user.email}">

<label>Password</label>

<input type="password" name="password" value="${user.password}">

<label>Email Reminder</label>

<select name="emailReminder">

<option value="true" ${user.emailReminder ? 'selected' : ''}>Enabled</option>

<option value="false" ${!user.emailReminder ? 'selected' : ''}>Disabled</option>

</select>

<button type="submit">Save Changes</button>

</form>

<br>

<a href="/logout">
<button>Logout</button>
</a>

</div>

<%@ include file="footer.jsp" %>

</body>

</html>