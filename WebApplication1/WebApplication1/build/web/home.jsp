<%-- 
    Document   : home
    Created on : 27 Nov, 2021, 11:27:56 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    HttpSession s = request.getSession();
  String sname =  (String) s.getAttribute("SName");
  String log = request.getParameter("logout");
  if(sname ==null){
  response.sendRedirect("login.jsp");
  }
      out.println("wellcome "+sname);
       
    if (log != null) {
        s.invalidate();
          response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home Page</title>
    </head>
    <body>
        <form>
             <input type="submit" value="Logout" name="logout" />
        </form>
       
    </body>
</html>
