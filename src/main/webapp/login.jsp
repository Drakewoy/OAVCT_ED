<%-- 
    Document   : login
    Created on : Oct 23, 2023, 8:20:25 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page de connection!!!</title>
    </head>
    <body>
        <div class="container">
            <div class="loginBox">
                <h1>Connectez-Vous!!!!</h1>
                <!--Partie admin-->
                <div class="formAdmin">
                     <form action="">
                        <input type="text" placeholder="Nom d'utilisateur" required>
                        <input type="password" placeholder="password" required>
                        <input type="bubmit" value="Connecter">
                    </form>
                </div>
                <!--partie Utilisateur-->
                <div class="formUser">
                     <form action="">
                        <input type="text" placeholder="Nom d'utilisateur" required>
                        <input type="password" placeholder="password" required>
                        <input type="bubmit" value="Connecter">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
