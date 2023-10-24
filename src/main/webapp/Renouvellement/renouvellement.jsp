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
<<<<<<< HEAD
        <div class="containerO">
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
=======
<<<<<<< HEAD

=======
>>>>>>> ab28b48bf1fac1cf873426b1b91459d85fc7ab28
         <div class="mb-2"></div>
        <a href="${pageContext.request.contextPath}/RenouServlet?action=renouvler"><button type="button" class="btn btn-light">Renouvler Une Assurance</button></a>     
        <table  class="table table-striped table-hover">
        <div class="mb-2"></div>   
<<<<<<< HEAD
=======

        
        <table border="1">
>>>>>>> ab28b48bf1fac1cf873426b1b91459d85fc7ab28
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
                        <td><a href="${pageContext.request.contextPath}/ImpRecu?id=${rv.getId_renou()}">Imprimer</a></td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
>>>>>>> 1211e00e5bf54ad99fe21d6686186fa92c2aee06
    </body>
</html>
