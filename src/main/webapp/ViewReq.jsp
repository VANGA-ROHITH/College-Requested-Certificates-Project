<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Request</title>
<style>
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
	<div id="right">
		<%
		String username = (String) session.getAttribute("username");
		%>
		<h3>
			Welcome <font color="red" size="5"><%=username%> </font>
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