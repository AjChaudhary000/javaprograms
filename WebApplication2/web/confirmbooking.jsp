<%-- 
    Document   : confirmbooking
    Created on : 3 Dec, 2021, 2:52:36 AM
    Author     : Test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mybeans" class="Beans.hotals"  scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Your Data </h1>
         name :- <%= mybeans.getName() %><br/>
          days :- <%= mybeans.getDays()%><br/> 
    </body>
</html>
