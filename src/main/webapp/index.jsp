<%-- 
    Document   : index
    Created on : Oct 9, 2023, 9:08:37 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
<<<<<<< HEAD
        <div class="container2">
            <a href="${pageContext.request.contextPath}/GestionVhServlet?action=lister">
                <div>
                    <img src="icon/car-solid.svg" alt="car">
                    <h1 style="font-size: 16px;">Gestion Vehicule
                    </h1>
                </div>
            </a>
            <a href="${pageContext.request.contextPath}/TransfertServlet?action=enre_trans">
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
=======
       <%@include file="partiel/sideMenu.jsp" %>
>>>>>>> a95d4c05ac9d0be1d561b2346195d2cf1fc4c2f5
        <div class="container1"> Grand contenue</div>
    </div>
</body>

</html>
