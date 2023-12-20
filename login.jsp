<%-- 
    Document   : login
    Created on : 9 Dec, 2021, 9:33:21 PM
    Author     : Hp
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginJSP Page</title>
         
    </head>
    
    <body>
        <form action="success.jsp">
       <%  String nm=request.getParameter("u1");
         String ps=request.getParameter("p1");
         
                  Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-61UAV9R:1521:xe","system","system");
       Statement stmt=con.createStatement();
       
    ResultSet rs=stmt.executeQuery("select * from oasis where uname='"+nm+"' and pass='"+ps+"'");
                         
           if(rs.next())
  {
                      session.setAttribute("nm", nm);
                      response.sendRedirect("success.jsp");
                   }
           else
           {
                response.sendRedirect("login.html");
           }
                %> 
            </form>
    </body>
    
</html>
