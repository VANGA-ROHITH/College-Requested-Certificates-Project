<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HOME PAGE</title>
<style>
body {
	background: skyblue;
}

table tr th {
	background: black;
	color: whitesmoke;
	font-weight: bold;
	height: 50px;
	width: 100px;
}

table tr td {
	background: whitesmoke;
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
			<li><a href="ViewReq.jsp"><b>View Request</b></a></li>
			<li><a href="index.html"><b>Logout</b></a></li>
		</ul>
	</div>
	<div align="center">
		<%
		String username = (String) session.getAttribute("username");
		%>
		<h3>
			Welcome To <font color="red" size="5"><%=username%> </font>
		</h3>

		<table>
			<tr>
				<th>Student Name</th>
				<th>Purpose</th>
				<th>Status</th>
			</tr>
			
			<%
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from reqcer where status='waiting' and resfrom='admin'");
			while (rs.next()) {
				String name = rs.getString("name");
				String purpose = rs.getString("purpose");
				String id=request.getParameter("id");
			%>
			<tr>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("purpose")%></td>

				<td><a href="Accept.jsp?id=<%=id%>">Accept</a></td>
			</tr>
			<%
			}
			%>
		</table>


	</div>
	<div id="left"></div>


</body>
</html>