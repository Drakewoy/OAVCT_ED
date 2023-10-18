<%-- 
    Document   : sideMenu
    Created on : Oct 18, 2023, 8:23:38 AM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container2">
            <a href="${pageContext.request.contextPath}/GestionVhServlet?action=lister">
                <div>
                    <img src="icon/car-solid.svg" alt="car">
                    <h1 style="font-size: 16px;">Gestion Vehicule
                    </h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/GestionTransfert/accueilTrans.jsp">
                <div>
                    <img src="icon/right-left-solid.svg" alt="">
                    <h1>Transfert</h1>
                </div>
            </a>
            <a href="">
                <div>
                    <img src="icon/rotate-right-solid.svg" alt="">
                    <h1>Renouvellement</h1>
                </div>
            </a>
            <a href="">
                <div>
                    <img src="icon/bell-regular.svg" alt="">
                    <h1>Alerte</h1>
                </div>
            </a>
        </div>
    </body>
</html>
