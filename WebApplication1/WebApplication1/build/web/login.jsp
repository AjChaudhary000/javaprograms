<%-- 
    Document   : login
    Created on : 27 Nov, 2021, 10:44:20 AM
    Author     : test
--%>

<%@page import="DataBaseDB.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% DbConnection con = new DbConnection();
    String SName = request.getParameter("UserName");
    String SPass = request.getParameter("PassWord");
    String submit = request.getParameter("Submit");
    if (submit != null) {
        con.ConnectionData();
        boolean check = con.LoginCheck(SName, SPass);
        if (check) {
            out.println("Login Done");
            HttpSession s = request.getSession();
            s.setAttribute("SName", SName);
            response.sendRedirect("home.jsp");
        } else {
            out.println("Login Error");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <form>
            <div class="justify-content-center m-3 ">
            <div class="form-group col-sm-3 mb-3">
                <label for="name" class="mb-1">UserName</label>
                <input type="text" class="form-control" name="UserName" id="name">
            </div>
            <div class="form-group col-sm-3 mb-3">
                <label for="name" class="mb-1">PassWord</label>
                <input type="password" class="form-control" name="PassWord" id="name">
            </div>
            <button type="submit" class="btn btn-success" value="Submit" name="Submit">Submit</button>

            </div>
        </form>

    </body>
</html>
