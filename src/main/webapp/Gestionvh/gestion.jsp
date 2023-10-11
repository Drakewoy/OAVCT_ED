<%-- 
    Document   : gestion
    Created on : Oct 9, 2023, 9:04:41 PM
    Author     : laine
--%>

<%@page import="model.GestionVh"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> List Vehicule</h1>
        <a href="${pageContext.request.contextPath}/Gestionvh/enre_vehicule.jsp">Ajouter un Vehicule</a>

        <table class="table table-striped">
            <tr>
                <th>Id-vehicule</th>
                <th>Type-vehicule</th>
                <th>Marque</th>
                <th>Modele</th>
                <th>No-moteur</th>
                <th>Nb-cylindre</th>
                <th>Couleur</th>
                <th>Proprietaire</th>
                <th>Plaque</th>
                <th>Telephone</th>
                <th>Adresse</th>
                <th>Type-piece</th>
                <th>No-piece</th>
                <th>Annee</th>
                <th>Courriel</th>
                <th>Transmission</th>
                <th>Type-essence</th>
                <th>Photo</th>
                <th>Alerte</th>
                <th>Date-alerte</th>
                <th>Date-enregistrement</th>
            </tr>
            <%
                List<GestionVh> list = (List<GestionVh>) session.getAttribute("list");
                if (list != null) {
                    if (!list.isEmpty()) {
                        for (GestionVh gv : list) {
            %>
            <tr>
                <td><%=gv.getId_vehicule()%></td>
                <td><%=gv.getType_v()%></td>
                <td><%=gv.getMarque()%></td>
                <td><%=gv.getModele()%></td>
                <td><%=gv.getNo_moteur()%></td>
                <td><%=gv.getNb_cylindre()%></td>
                <td><%=gv.getCouleur()%></td>
                <td><%=gv.getProprietaire()%></td>
                <td><%=gv.getPlaque()%></td>
                <td><%=gv.getTel_pro()%></td>
                <td><%=gv.getAdresse_pro()%></td>
                <td><%=gv.getType_piece()%></td>
                <td><%=gv.getNo_piece()%></td>
                <td><%=gv.getAnnee()%></td>
                <td><%=gv.getCourriel()%></td>
                <td><%=gv.getTransmission()%></td>
                <td><%=gv.getType_essence()%></td>
                <td><%=gv.getPhoto()%></td>
                <td><%=gv.getSur_alerte()%></td>
                <td><%=gv.getDate_alerte()%></td>
                <td><%=gv.getDate_enre()%></td>
            </tr>
            <%}
                    }
                }%>
        </table>
    </body>
</html>
