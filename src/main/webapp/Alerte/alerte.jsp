<%-- 
    Document   : alerte
    Created on : Oct 19, 2023, 11:12:36 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Les Alertes</title>
    </head>
    <body>
        <div class="containerO">
            <%@include file="../partiel/sideMenu.jsp" %>
            <div class="container1">
                <a href="${pageContext.request.contextPath}/AlerteServlet?action=enregistrer"><button style="border-radius:10px; margin:5px 0 5px 5px; background-color: red; color:#fff; border:none;">Alerter</button></a>
                <table class="table table-striped table-hover">
                    <tr>
                        <th>Id Alerte</th>
                        <th>ID Véhicule</th>
                        <th>Type Alerte</th>
                        <th>Lieu d’incident</th>
                        <th>Heure d’incident</th>
                        <th>Déclarant</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                    <c:if test="${liste != null}">
                        <c:forEach var="av" items="${liste}">
                            <tr>
                                <td><c:out value="${av.getId_alerte()}"/></td>
                                <td><c:out value="${av.getId_vehicule()}"/></td>
                                <td><c:out value="${av.getType_alerte()}"/></td>
                                <td><c:out value="${av.getLieu_incident()}"/></td>
                                <td><c:out value="${av.getHeure_incident()}"/></td>
                                <td><c:out value="${av.getDeclarant()}"/></td>
                                <td><c:out value="${av.getDescription()}"/></td>
                                <td><a href="${pageContext.request.contextPath}/AlerteServlet?id=${av.getId_alerte()}&action=modifier"><i title="Modifier" style="font-size:1em; color:#0909ff;" class="bi bi-pencil-fill"></a></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </table>
            </div>
        </div>
    </body>
</html>
