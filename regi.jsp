<%-- 
    Document   : regi
    Created on : Dec 20, 2023, 12:04:02 AM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup JSP Page</title>
    </head>
    <body>
     <% String fn=request.getParameter("n2");
        String ln=request.getParameter("p2");
        
         
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-61UAV9R:1521:xe","system","system");
       Statement stmt=con.createStatement();
       
       int i=stmt.executeUpdate("insert into oasis values('"+fn+"','"+ln+"')");
        if(i>0)
       {
        response.sendRedirect("login.html");
       }
       else
       {
       response.sendRedirect("registration.html");
       }
       %>
      
       
</body>
</html>