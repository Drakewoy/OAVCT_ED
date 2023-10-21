<%-- 
    Document   : sideMenu
    Created on : Oct 18, 2023, 8:23:38 AM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
         <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
        <div class="container2">
            <a href="${pageContext.request.contextPath}/index.jsp">
                <div>
                    <i class="bi bi-house"></i>
                    <h1>Accueil
                    </h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/GestionVhServlet">
                <div>
                    <i class="bi bi-car-front"></i>
                    <h1>Gestion Vehicule
                    </h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/TransfertServlet">
                <div>
                    <i style="font-weight: bolder;" class="bi bi-arrow-left-right"></i>
                    <h1>Transfert</h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/RenouServlet">
                <div>
                    <i title="Renouvellement" class="bi bi-arrow-clockwise"></i>
                    <h1 >Renouvellement</h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/AlerteServlet">
                <div>
                   <i class="bi bi-exclamation-octagon"></i>
                    <h1>Alerte</h1>
                </div>
            </a>
        </div>
    </body>
</html>
