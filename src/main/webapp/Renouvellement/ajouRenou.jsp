<%-- 
    Document   : ajouRenou
    Created on : Oct 18, 2023, 9:00:20 AM
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
        <title>Renouvler une assurance</title>
    </head>
    <body>
        <div class="containerF">
             <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <div class="containerIn">
                <h1>Renouvler une assurance</h1>
                <a title="Retour" href="${pageContext.request.contextPath}/RenouServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form action="${pageContext.request.contextPath}/RenouServlet?id=renouvler" method="post">
                    <input type="text" class="form-control" name="id_vehicule" placeholder="ID véhicule" >
                    <input type="text" class="form-control" name="no_transaction" placeholder="Numéro transaction" >
                    <input type="number" class="form-control" name="montantA" placeholder="Montant Assurance" >
                    <label for="date_paie" class="form-label">Date Paiement</label>
                    <input type="date" class="form-control" name="date_paie" placeholder="Date paiement" >
                    <label for="date_dem" class="form-label" >Date Demission</label>
                    <input type="date" class="form-control" name="date_dem" placeholder="Date fin assurance" >
                    <input type="submit" class="form-control" value="Renouvler">
                </form>
            </div>
        </div>
    </body>
</html>
