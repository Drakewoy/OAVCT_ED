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
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="containerF">
            <a style="float:right; border-radius:15px; font-size:14px; display: block; position: absolute; top:2px; right:1px;" 
               href="${pageContext.request.contextPath}/LoginServlet" >
                <button style="border-radius:15px;" > Log out</button></a>
            <div class="containerIn">
                <%Alerte al = (Alerte) session.getAttribute("liste");%>
                <a href="${pageContext.request.contextPath}/AlerteServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form action="${pageContext.request.contextPath}/AlerteServlet?action=modifier" method="post">
                    <label for="id_alerte" class="form-label">Id Alerte</label>
                    <input type="text" class="form-control" disabled name="id_alerte" value="<%=al.getId_alerte()%>">
                    <input type="hidden" class="form-control"  name="id_alerte" value="<%=al.getId_alerte()%>">

                    <label for="id_vehicule" class="form-label">Id Vehicule</label>
                    <input type="text" class="form-control" name="id_vehicule" value="<%=al.getId_vehicule()%>">
                    <select name="typeA" id="">
                        <%for (String ta : typeA) {%>
                        <option value="<%=ta%>" <%= al != null && al.getType_alerte().equalsIgnoreCase(ta) ? "selected" : ta%> >Type D'accident</option>
                        <%}%>
                    </select>
                    <label for="lieu_inci" class="form-label" >lieu D'incident</label>
                    <input type="text" class="form-control" name="lieu_inci" value="<%=al.getLieu_incident()%>">
                    <label for="heure_inci" class="form-label">Heure Incident</label>
                    <input type="time" class="form-control" name="heure_inci" value="<%=al.getHeure_incident()%>">
                    <label for="declarant" class="form-label">Declarant</label>
                    <input type="text" class="form-control" name="declarant" value="<%=al.getDeclarant()%>">
                    <label for="description" class="form-label">Description</label>
                    <input type="text" class="form-control" name="description" value="<%=al.getDescription()%>">
                    <input type="submit" class="form-control" value="Alerter">
                </form>
            </div>
        </div>
    </body>
</html>
