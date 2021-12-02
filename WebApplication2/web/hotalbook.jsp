<%-- 
    Document   : hotalbook
    Created on : 3 Dec, 2021, 2:42:47 AM
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
        <% mybeans.setName(request.getParameter("name"));
           mybeans.setDays(request.getParameter("days"));
           
        %>
        <h1>confirm Your Data </h1>
         name :- <%= mybeans.getName() %><br/>
          days :- <%= mybeans.getDays()%><br/>  
          <a href="confirmbooking.jsp">Click Here</a>
    </body>
</html>
