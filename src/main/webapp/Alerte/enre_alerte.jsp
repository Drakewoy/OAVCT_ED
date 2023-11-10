<%-- 
    Document   : enre_alerte
    Created on : Oct 19, 2023, 11:12:54 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="containerF">
            <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <div class="containerIn">
                <a href="${pageContext.request.contextPath}/AlerteServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form action="${pageContext.request.contextPath}/AlerteServlet?action=enregistrer" method="post">
                  
                    <input type="text" class="form-control" name="id_vehicule" placeholder="ID véhicule">
                    <select name="typeA" id="">
                        <option selected>Type D'accident</option>
                        <option value="Vol">Vol</option>
                        <option value="Perte">Perte</option>
                        <option value="Trafics Illicites">Trafics Illicites</option>
                        <option value="Activités Illégale">Activités Illégale</option>
                    </select>
                    <input type="text" class="form-control" name="lieu_inci" placeholder="Lieu d’incident">
                    <label for="heure_inci" class="form-label">Heure D'incident</label>
                    <input type="time" class="form-control" name="heure_inci" placeholder="Heure d’incident (HH :MM)">
                    <input type="text" class="form-control" name="declarant" placeholder="Déclarant">
                    <input type="text" class="form-control" name="description" placeholder="Description">
                    <input type="submit" class="form-control" value="Alerter">
                </form>
            </div>
        </div>
    </body>
</html>
