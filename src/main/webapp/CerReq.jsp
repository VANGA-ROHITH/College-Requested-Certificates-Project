<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REQUEST CERTIFICATE</title>
<style>
body {
	background: skyblue;
}

table tr th {
	background: black;
	color: skyblue;
	font-weight: bold;
	height: 50px;
	width: 100px;
}

table tr td {
	background: skyblue;
	color: black;
	height: 35px;
}

ul li {
	float: center;
	width: 200px;
	list-style: none;
	font-size: 20px;
}

ul li a {
	float: center;
	text-transform: uppercase;
	text-decoration: none;
}

}
#right {
	float: center;
	width: 49%;
	height: 500px;
	border: 1px solid skyblue;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Add Details To Request Certificate</h1>
		<ul>
			<li><a href="index.jsp"><b>Home</b></a></li>
			<li><a href="ViewRequest.jsp"><b>View Request</b></a></li>
			<li><a href="ViewResponse.jsp"><b>Status</b></a></li>
			<li><a href="index.html"><b>Logout</b></a></li>
		</ul>
	</div>
	<div align="center">
	<%
	String username = (String) session.getAttribute("username");%>
	<h3> Welcome <font color="red" size="5"><%=username%> </font></h3>
	
	
	<form name="CerReq" action="RequestAction.jsp" method="post">
		<table style="margin-top: 50px;">

			<tr>
				<td>Certificate Name</td>
				<td><input type="text" name="reqcer" required></td>
			</tr>
			<tr>
				<td>Purpose</td>
				<td><input type="text" name="purpose" required></td>
			</tr>
			<%
			try {
				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from student");
			%>
			<tr>
				<td>Select Name</td>
				<td><select name="name">
						<%
						while (rs.next()) {
						%>
						<option value="<%=rs.getString("username")%>"><%=rs.getString("username")%></option>
						<%
						}
						} catch (Exception e) {
						out.println(e);
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="Reset"></td>
			</tr>
		</table>
	</form>
	</div>
	
</body>
</html>
