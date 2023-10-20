<%-- 
    Document   : accueilTrans
    Created on : Oct 10, 2023, 11:02:48 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/GestionTransfert/enre_transfert.jsp"><h2>Enregistrer un transfert</h2></a>
        <a href="${pageContext.request.contextPath}/GestionTransfert/modifier_transfert.jsp"><h2>Enregistrer un transfert</h2></a>
        <a href="${pageContext.request.contextPath}/GestionTransfert/supprimer_transfert.jsp"><h2>Enregistrer un transfert</h2></a>
    </body>
</html>
