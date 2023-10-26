<%-- 
    Document   : index
    Created on : Oct 9, 2023, 9:08:37 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Document</title>
    </head>

    <body>
        <div class="containerO">
            <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <%@include file="partiel/sideMenu.jsp" %>

            <div class="container1">
                <div>
                    <p style="font-size:20px; font-family: 'lato', helvetica, Arial;">
                    <h1 style="font-size: 26px; font-weight: bolder; color:blue;">Le portail d'accès aux informations et aux services publics</h1>

                    L' Office d'Assurance Véhicule Contre Tiers (OAVCT), est L'organisme chargé de L'application de la 
                    présente Loi. ll est placé sous la tutelle du Ministère de L'Economie et des Finances et jouit de L'autonomie 
                    financière et administrative. Avec le service en ligne de l’OAVCT il suffit d’une bonne connexion internet et 
                    d’une carte de crédit pour renouveler l’assurance véhicule.
                    </p>
                </div>
                <div><img style="width:300px; border-radius:15px; opacity:0.5;" src="icon/oavct2.jpeg" alt=""/></div>
            </div>
        </div>
    </body>

</html>
