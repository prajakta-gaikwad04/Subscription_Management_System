<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

<title>Welcome - Subscription Management System</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<style>

body{
font-family:'Poppins',sans-serif;
background:linear-gradient(135deg,rgb(128, 0, 0),#141e30);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
margin:0;
}

.container{
	background-color: rgb(128, 0, 0);
text-align:center;
margin: 50px;
font-family: inherit ;
color:rgb(255, 255, 255);
}

.container h1{
font-size:38px;
margin-bottom:10px;
}

.container p{
font-size:18px;
margin-bottom:30px;
}

.login-btn{
display:inline-block;
padding:12px 30px;
font-size:16px;
background:rgb(255, 128, 0);
color:rgb(255, 255, 255);
text-decoration:none;
border-radius:6px;
transition:0.3s;
}

.login-btn:hover{
background:#ee964b;
transform:scale(1.05);
}

</style>

</head>

<body>

<div class="container">

<h1>Subscription Management System</h1>

<p>Manage and track all your subscriptions easily</p>

<a href="/login" class="login-btn"> Login</a>

</div>

</body>

</html>