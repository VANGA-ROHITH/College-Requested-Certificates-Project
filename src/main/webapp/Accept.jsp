<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Status</title>
</head>
<body>
    <%
    String id = request.getParameter("id");
    try {
    	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
        Statement pst=con.createStatement();
       	      
    	String query="select *from reqcer";
    	ResultSet rs=pst.executeQuery(query);
        int i = pst.executeUpdate("UPDATE reqcer SET status='Approved' ");
        if (i > 0) {
            response.sendRedirect("Accept.jsp?msg=success");
        } else {
            response.sendRedirect("Accept.jsp?msg=failed");
        }
    } catch (Exception e) {
        out.println(e);
    }
    %>
</body>
</html>
