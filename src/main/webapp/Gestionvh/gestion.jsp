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
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="containerO">
            <%@include file="../partiel/sideMenu.jsp" %>
            <div class="container1">
                <h1> List Vehicule</h1>
                <a href="${pageContext.request.contextPath}/GestionVhServlet?action=ajouter"><button class="bi bi-plus-circle " type="button" class="btn btn-light">Ajouter un vehicule</button></a>
                <div class="mb-2"></div>
                <table class="table table-striped table-hover" >
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
                        <th>Action</th>
                    </tr>
                    <c:if test="${liste != null}">
                        <c:if test="${liste != ''}"> 
                            <c:forEach var="gv" items="${liste}">

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
                                    <%--<c:set>--%>
                                    <td>
                                        <a  href="${pageContext.request.contextPath}/GestionVhServlet?id=${gv.getId_vehicule()}&action=modifier"><i class="bi bi-pencil-fill"></i></a>
                                        || <a href="${pageContext.request.contextPath}/GestionVhServlet?id=${gv.getId_vehicule()}&action=supprimer"><i class="bi bi-trash3"></i></a>
                                    </td>

                                </tr>
                            </c:forEach>
                        </c:if>
                    </c:if>

                </table>
            </div>
        </div>
    </body>
</html>
