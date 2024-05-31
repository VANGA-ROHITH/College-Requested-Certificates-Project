<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
    String sid=request.getParameter("sid");
    String htno=request.getParameter("htno");
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String year=request.getParameter("year");
    String branch=request.getParameter("branch");
    String sem=request.getParameter("sem");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
   
    
    try
    {
    	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mainproject", "root", "");
      Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select count(*) from student where username='"+username+"'");
      while(rs.next())
      {
          int count=rs.getInt(1);
          if(count==0)
          {
              int i=st.executeUpdate("insert into student values('"+sid+"','"+htno+"','"+name+"','"+gender+"','"+email+"','"+mobile+"','"+year+"','"+branch+"','"+sem+"','"+username+"','"+password+"')");
              if(i>0)
              {
                  %>
       <script type="text/javascript">
           window.alert("Student Details Added SuccessFully");
           window.location="Student.jsp";
           
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