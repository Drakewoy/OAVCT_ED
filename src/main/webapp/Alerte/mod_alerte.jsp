<%-- 
    Document   : mod_alerte
    Created on : Oct 20, 2023, 12:19:56 AM
    Author     : laine
--%>

<%@page import="model.Alerte"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String typeA[] = {"Vol", "Perte", "Trafics Illicites", "Activités Illégale"};%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%Alerte al = (Alerte) session.getAttribute("liste");%>
        <form action="${pageContext.request.contextPath}/AlerteServlet?action=modifier" method="post">
            <input type="hidden" name="id_alerte" value="<%=al.getId_alerte()%>">
            <input type="text" name="id_vehicule" value="<%=al.getId_vehicule()%>">
            <select name="typeA" id="">
                <%for (String ta : typeA) {%>
                <option value="<%=ta%>" <%= al != null && al.getType_alerte().equalsIgnoreCase(ta) ? "selected" : ta%> >Type D'accident</option>
                <%}%>
            </select>
            <input type="text" name="lieu_inci" value="<%=al.getLieu_incident()%>">
            <input type="time" name="heure_inci" value="<%=al.getHeure_incident()%>">
            <input type="text" name="declarant" value="<%=al.getDeclarant()%>">
            <input type="text" name="description" value="<%=al.getDescription()%>">
            <input type="submit" value="Alerter">
        </form>
    </body>
</html>
