<%-- 
    Document   : ajouRenou
    Created on : Oct 18, 2023, 9:00:20 AM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Renouvler une assurance</title>
    </head>
    <body>
          <h1>Renouvler une assurance</h1>
          <form action="${pageContext.request.contextPath}/RenouServlet?id=renouvler" method="post">
            <input type="text" name="ID_véhicule" placeholder="ID véhicule" >
            <input type="text" name="No_transaction" placeholder="Numéro transaction" >
            <input type="number" name="MontantA" placeholder="Montant Assurance" >
            <input type="date" name="Date_paie" placeholder="Date paiement" >
            <input type="date" name="Date_fin_ass" placeholder="Date fin assurance" >
            <input type="submit" value="Renouvler">
        </form>
    </body>
</html>
