<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT REGISTRATION PAGE</title>
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

}
#center {
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
			<strong>STUDENT REGISTRATION PAGE</strong>
		</h2>
	</div>
	<div id="center">
		<div align="center">
			<h3>Add Student Details Here</h3>
		</div>
		<%
		Random rand = new Random();

		String sid = "S_" + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10))
				+ String.valueOf(rand.nextInt(10) + String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10))
				+ String.valueOf(rand.nextInt(10)) + String.valueOf(rand.nextInt(10)));
		%>
		<form name="login" action="AddStudentAction.jsp" method="post">
			<table align="center">
				<tr>
					<td>StudentID</td>
					<td><input type="text" name="sid" value="<%=sid%>" required></td>
				</tr>
				<tr>
					<td>HallTicketNo</td>
					<td><input type="text" name="htno" required></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" value="male">MALE
						<input type="radio" name="gender" value="female">FEMALE</td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" required></td>
				</tr>
				<tr>
					<td>Mobile NO</td>
					<td><input type="text" name="mobile" required></td>
				</tr>
				<tr>
					<td>Year</td>
					<td><input type="text" name="year" required></td>
				</tr>
				<tr>
					<td>Branch</td>
					<td><input type="text" name="branch" required></td>
				</tr>
				<tr>
					<td>Sem</td>
					<td><input type="text" name="sem" required></td>
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
					<td><input type="submit" value="Add Student"></td>
					<td><input type="Reset"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>