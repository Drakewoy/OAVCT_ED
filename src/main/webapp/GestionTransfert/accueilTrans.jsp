<%-- 
    Document   : accueilTrans
    Created on : Oct 10, 2023, 11:02:48 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
             <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <%@include file="../partiel/sideMenu.jsp" %>
            <div class="container1">
                <a href="${pageContext.request.contextPath}/GestionTransfert/enre_transfert.jsp?action=enre_trans"><h2><i class="bi bi-plus-circle"></i></h2></a>
                <table class="table table-striped" >
                    <tr>
                        <th>id_vehicule </th>
                        <th>Nouveau prop</th>
                        <th>Sexe </th>
                        <th>Telephone</th>
                        <th>Adresse</th>
                        <th>Type Pieces</th>
                        <th>No Piece</th>
                        <th>Motif Transfert</th>
                        <th>Date transfer</th>
                        <th>Etat</th>
                        <th>Action</th>
                    </tr
                    <c:if test="${liste!=null}">
                        <c:if test="${!liste.isEmpty()}">
                            <c:forEach var="tm" items="${liste}">
                                <tr>
                                    <td><c:out value="${tm.getId_vehicule()}"/></td>
                                    <td><c:out value="${tm.getNouveau_prop()}"/></td>
                                    <td><c:out value="${tm.getSexe()}"/></td>
                                    <td><c:out value="${tm.getTelephone()}"/></td>
                                    <td><c:out value="${tm.getAdresse()}"/></td>
                                    <td><c:out value="${tm.getType_piece()}"/></td>
                                    <td><c:out value="${tm.getNo_piece()}"/></td>
                                    <td><c:out value="${tm.getMotif_trans()}"/></td>
                                    <td><c:out value="${tm.getDate_trans()}"/></td>
                                    <td><c:out value="${tm.getEtat()}"/></td>

                                    <td>
                                        <a href="${pageContext.request.contextPath}/TransfertServlet?id=${tm.getId_trans()}&action=modifier"><i class="bi bi-pencil-fill"></i></a>
                                    ||
                                    <a href="${pageContext.request.contextPath}/GestionTransfert/supprimer_transfert.jsp"><i class="bi bi-trash3"></i></a>
                                    <td>
                                   
                                </tr>
                            </c:forEach>
                        </c:if>
                    </c:if>

                </table>
            </div>
        </div>

    </body>
</html>
