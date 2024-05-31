<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
    String aid=request.getParameter("aid");
    String name=request.getParameter("name");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String designation=request.getParameter("designation");
    String email=request.getParameter("email");
    
    try
    {
    	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
      Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select count(*) from admin where username='"+username+"'");
      while(rs.next())
      {
          int count=rs.getInt(1);
          if(count==0)
          {
              int i=st.executeUpdate("insert into admin values('"+aid+"','"+name+"','"+username+"','"+password+"','"+designation+"','"+email+"')");
              if(i>0)
              {
                  %>
       <script type="text/javascript">
           window.alert("Admin Details Added SuccessFully");
           window.location="Admin.jsp";
           
           </script>
        <%
              }
else
{
%>
       <script type="text/javascript">
           window.alert("Unable to Add Admin Details Right Now");
           window.location="Admin.jsp";
           
           </script>
        <%
}
          }
else
{
%>
       <script type="text/javascript">
           window.alert("This Admin Details Alredy Added By You");
           window.location="Admin.jsp";
           
           </script>
        <%
}
      }
%>
       <script type="text/javascript">
           window.alert("This Admin Details Alredy Added By You");
           window.location="Admin.jsp";
           
           </script>
        <%
    }
      catch(Exception e)
              {
              out.println(e);
              }
      %>