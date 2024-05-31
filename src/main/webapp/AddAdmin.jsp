<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN REGISTRATION PAGE</title>
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
}
</style>
</head>
<body>
	<div align="center">
		<h2>
			<strong>ADMIN REGISTRATION PAGE</strong>
		</h2>
	</div>
	<div id="right">
		<h3>Add Admin Details Here</h3>
		<%
		Random rand = new Random();

		String aid = "A_" + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10))
				+ String.valueOf(rand.nextInt(10) + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10))
				+ String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10)));
		%>
		<form name="login" action="AddAdminAction.jsp" method="post">
			<table>
				<tr>
					<td>AdminID</td>
					<td><input type="text" name="aid" value="<%=aid%>" required></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required></td>
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
					<td>Designation</td>
					<td><input type="text" name="designation" required></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" required></td>
				</tr>

				<tr>
					<td><input type="submit" value="Add Admin"></td>
					<td><input type="Reset"></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="left"></div>
</body>
</html>