<%-- 
    Document   : renouvellement
    Created on : Oct 18, 2023, 9:00:43 AM
    Author     : laine
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
        <title>Renouvellement</title>
    </head>
    <body>

        <div class="containerO">
             <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <%@include file="../partiel/sideMenu.jsp" %>
            <div class="container1">
                <div class="mb-2"></div>
                <a href="${pageContext.request.contextPath}/RenouServlet?action=renouvler"><button type="button" class="btn btn-light">Renouvler Une Assurance</button></a>     
                <table  class="table table-striped table-hover">
                    <div class="mb-2"></div>   


                    <table class="table table-striped table-hover">
                        <tr>
                            <th>Id_renouv</th>
                            <th>Id_vehicule</th>
                            <th>No Transaction</th>
                            <th>Montant Assurance</th>
                            <th>Date Paiement</th>
                            <th>Date fin assurance</th>
                            <th>Action</th>
                        </tr>
                        <c:if test="${liste != null }">
                            <c:forEach var="rv" items="${liste}">
                                <tr>
                                    <td><c:out value="${rv.getId_renou()}"/></td>
                                    <td><c:out value="${rv.getId_vehicule()}"/></td>
                                    <td><c:out value="${rv.getNo_transaction()}"/></td>
                                    <td><c:out value="${rv.getMontant_assu()}"/></td>
                                    <td><c:out value="${rv.getDate_paie()}"/></td>
                                    <td><c:out value="${rv.getDate_demission()}"/></td>
                                    <td><a href="${pageContext.request.contextPath}/ImpRecu?id=${rv.getId_renou()}"><i class="bi bi-printer-fill"></i></a></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>
            </div>
        </div>
    </body>
</html>
