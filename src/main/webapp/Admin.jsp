<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	background: skyblue;
}

ul li {
	float: left;
	width: 200px;
	list-style: none;
	font-size: 20px;
}

ul li a {
	text-transform: uppercase;
	text-decoration: none;
}

#right {
	float: right;
	width: 50%;
	height: 500px;
	border: 1px solid skyblue;
}

#left {
	float: left;
	width: 49%;
	height: 500px;
	border: 1px solid skyblue;
	background: url(images/1.jpg)
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN</title>
</head>
<body>
	<div align="center">
		<h2>
			<strong>ADMIN LOGIN PAGE</strong>
		</h2>
	</div>
	<div align="center">

		<ul>
			<li><a href="index.html"><b>Home</b></a></li>
			<li><a href="AddAdmin.jsp"><b>REGISTER ADMIN</b></a></li>

		</ul>

	</div>
	<div id="right">

		<form name="AdminLogin" action="AdminLogin.jsp" method="post">
			<table align="center">
				<tr>
					<td></td>
					<td>
						<h3>Welcome To Admin Login</h3>
					</td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Login">
					<input type="Reset"></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="left"></div>

</body>
</html>