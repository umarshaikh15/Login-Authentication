<%-- 
    Document   : success
    Created on : 10 Dec, 2021, 8:13:22 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>

        body{
            margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: #34495e;
}
.box{
     width: 800px;
     padding: 40px;
     position: absolute;
     top: 50%;
     left: 50%;
     transform: translate(-50%,-50%);
     background: #191919;
     text-align: center;
  }
  .box h1,h3{
    color:white;
    text-transform: uppercase;
    font weight: 500;
  }
  .box input[type ="submit"]{
    border:0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71db;
    padding: 14px 40px;
    width: 200px;
    outline: none;
    color:white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
  }
  .box input[type = "submit"]:hover{
    background: #2ecc71;
  }
       
     </style>
     <body>
    
       <% if((session.getAttribute("nm")==null)||(session.getAttribute("nm")==" ") )
        { %>
                    You Are Not Logged In<br>
                    <a href="login.html">Please Try Again</a>
                    <%
                        }
                       else
                        {
                        %>
                       <br><br>
                            <div class="container">
                                <div class="box">
                         <h1> Wlcome  <%=session.getAttribute("nm")%><h1>
                        <h3>You Have Successfully Logged in To The Secured Page!</h3>
                        <a href="login.html"><input type="submit" value="Logout"></a>
                        </div>
                        </div>
                        <%
                            }
%>
    
    </body>
</html>
