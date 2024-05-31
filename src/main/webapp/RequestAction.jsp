<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String reqcer=request.getParameter("reqcer");
    String name=request.getParameter("name");
    String purpose=request.getParameter("purpose");
    String status=request.getParameter("status");
    String resfrom=request.getParameter("resfrom");
    
    try
    {
    	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
      Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select count(*) from reqcer where name='"+name+"'");
      while(rs.next())
      {
          int count=rs.getInt(1);
          if(count==0)
          {
              int i=st.executeUpdate("insert into reqcer values(null,'"+reqcer+"','"+name+"','"+purpose+"','waiting','admin')");
              if(i>0)
              {
                  %>
       <script type="text/javascript">
           window.alert("Student Details Added SuccessFully");
           window.location="CerReq.jsp";
           
           </script>
        <%
              }
else
{
%>
       <script type="text/javascript">
           window.alert("Unable to Add Student Details Right Now");
           window.location="Student.jsp";
           
           </script>
        <%
}
          }
else
{
%>
       <script type="text/javascript">
           window.alert("This Student Details Alredy Added By You");
           window.location="Student.jsp";
           
           </script>
        <%
}
      }
%>
       <script type="text/javascript">
           window.alert("This Student Details Alredy Added By You");
           window.location="Student.jsp";
           
           </script>
        <%
    }
      catch(Exception e)
              {
              out.println(e);
              }
      %>