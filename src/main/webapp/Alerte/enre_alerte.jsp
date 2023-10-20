<%-- 
    Document   : enre_alerte
    Created on : Oct 19, 2023, 11:12:54 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/AlerteServlet?action=enregistrer" method="post">
            <input type="text" name="id_vehicule" placeholder="ID véhicule">
            <select name="typeA" id="">
                       <option selected>Type D'accident</option>
                <option value="Vol">Vol</option>
                <option value="Perte">Perte</option>
                <option value="Trafics Illicites">Trafics Illicites</option>
                <option value="Activités Illégale">Activités Illégale</option>
            </select>
            <input type="text" name="lieu_inci" placeholder="Lieu d’incident">
            <input type="time" name="heure_inci" placeholder="Heure d’incident (HH :MM)">
            <input type="text" name="declarant" placeholder="Déclarant">
            <input type="text" name="description" placeholder="Description">
            <input type="submit" value="Alerter">
        </form>
    </body>
</html>
