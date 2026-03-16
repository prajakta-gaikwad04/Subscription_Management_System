<!DOCTYPE html>
<html>
<head>

<title>Subscription Manager</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

	<%@ include file="header.jsp" %>

<!-- Hero Section -->

<section class="hero">

<h1>Manage All Your Subscriptions In One Place</h1>

<p>Track your Netflix, Spotify, Amazon and more with ease.</p>

<a href="/subscriptions/add" class="btn">Add Subscription</a>

</section>

<!-- Features Section -->

<section class="features">

<div class="card">

<i class="fa-solid fa-tv"></i>

<h3>Active Subscriptions</h3>

<p>View all your running subscriptions.</p>

<a href="/subscriptions/view">Open</a>

</div>

<div class="card">

<i class="fa-solid fa-calendar-check"></i>

<h3>Upcoming Payments</h3>

<p>Track renewal dates and avoid surprises.</p>

<a href="/subscriptions/upcoming">Open</a>

</div>

<div class="card">

<i class="fa-solid fa-gear"></i>

<h3>Settings</h3>

<p>Manage your profile and preferences.</p>

<a href="/settings">Open</a>

</div>

</section>

<!-- Footer -->

<footer>

<p>© 2026 Subscription Management System</p>

</footer>

</body>
</html>