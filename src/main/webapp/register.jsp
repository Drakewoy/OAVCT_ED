<%-- 
    Document   : login
    Created on : Oct 23, 2023, 8:20:25 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String error;
    if (session.getAttribute("error") != null) {
        error = session.getAttribute("error").toString();
    } else {
        error = "";
    }%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page de connection!!!</title>
    </head>
    <body style="background-color: unset;">

        <div class="loginBox">
            <h1>Ceer Un Compte</h1>

            <!--                partie Utilisateur-->
            <div class="formLog">
                <form action="${pageContext.request.contextPath}/LoginServlet?action=register" method="post">
                    <p style="color:red; background-color:#fff; text-align: center; border-radius: 15px; font-size: 18px;"><%=error%></p>
                    <input type="text" class="form-control" name="user" placeholder="Nom d'utilisateur" required>
                    <input type="password" class="form-control" name="pass"  placeholder="password" required>
                    <label for="user" >Utilisateur</label>
                    <input type="radio" name="compte" value="user" required>
                    <label for="user" >Administrateur</label>
                    <input type="radio" name="compte" value="admin" required>
                    <input type="submit" class="form-control"  value="Creer Compte">
                </form>
            </div>
        </div>
    </body>
</html>
