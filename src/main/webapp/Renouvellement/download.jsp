<%-- 
    Document   : download
    Created on : Oct 23, 2023, 7:19:01 PM
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
        <h1>Telecharger votre Recus</h1>
        <a href="${pageContext.request.contextPath}/DownloadRecu"><button>Telecharger</button></a>
        <a href="${pageContext.request.contextPath}/RenouServlet"><button>Retour</button></a>
    </body>
</html>
