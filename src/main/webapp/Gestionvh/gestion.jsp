<%-- 
    Document   : gestion
    Created on : Oct 9, 2023, 9:04:41 PM
    Author     : laine
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.GestionVh"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> List Vehicule</h1>
        <!--<a href="${pageContext.request.contextPath}/Gestionvh/enre_vehicule.jsp">Ajouter un Vehicule</a>-->

        <table class="table table-striped">
            <tr>
                <th>Id-vehicule</th>
                <th>Type-vehicule</th>
                <th>Marque</th>
                <th>Modele</th>
                <th>No-moteur</th>
                <th>Nb-cylindre</th>
                <th>Couleur</th>
                <th>Proprietaire</th>
                <th>Plaque</th>
                <th>Telephone</th>
                <th>Adresse</th>
                <th>Type-piece</th>
                <th>No-piece</th>
                <th>Annee</th>
                <th>Courriel</th>
                <th>Transmission</th>
                <th>Type-essence</th>
                <th>Photo</th>
                <th>Alerte</th>
                <th>Date-alerte</th>
                <th>Date-enregistrement</th>
            </tr>

            <!--//                List<GestionVh> list = (List<GestionVh>) session.getAttribute("list");
            //                if (list != null) {
            //                    if (!list.isEmpty()) {
            //   
            for (GestionVh gv : list) {-->
            <c:if test="${list != null}">
           <c:if test="${list != ''}"> 
                    <c:forEach var="gv" items="${list}">

                        <tr>
                            <td><c:out value="${gv.getId_vehicule()}"/></td>
                            <td><c:out value="${gv.getType_v()}"/></td>
                            <td><c:out value="${gv.getMarque()}"/></td>
                            <td><c:out value="${gv.getModele()}"/></td>
                            <td><c:out value="${gv.getNo_moteur()}"/></td>
                            <td><c:out value="${gv.getNb_cylindre()}"/></td>
                            <td><c:out value="${gv.getCouleur()}"/></td>
                            <td><c:out value="${gv.getProprietaire()}"/></td>
                            <td><c:out value="${gv.getPlaque()}"/></td>
                            <td><c:out value="${gv.getTel_pro()}"/></td>
                            <td><c:out value="${gv.getAdresse_pro()}"/></td>
                            <td><c:out value="${gv.getType_piece()}"/></td>
                            <td><c:out value="${gv.getNo_piece()}"/></td>
                            <td><c:out value="${gv.getAnnee()}"/></td>
                            <td><c:out value="${gv.getCourriel()}"/></td>
                            <td><c:out value="${gv.getTransmission()}"/></td>
                            <td><c:out value="${gv.getType_essence()}"/></td>
                            <td><c:out value="${gv.getPhoto()}"/></td>
                            <td><c:out value="${gv.getSur_alerte()}"/></td>
                            <td><c:out value="${gv.getDate_alerte()}"/></td>
                            <td><c:out value="${gv.getDate_enre()}"/></td>
                        </tr>
                    </c:forEach>
                </c:if>
            </c:if>

        </table>
    </body>
</html>
