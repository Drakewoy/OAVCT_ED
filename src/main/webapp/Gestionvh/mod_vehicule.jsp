<%-- 
    Document   : mod_vehicule
    Created on : Oct 14, 2023, 8:58:34 PM
    Author     : laine
--%>

<%@page import="java.util.List"%>
<%! String typeV[] = {"motocyclette", "voiture", "poidsLourds"};%>
<%! String typeP[] = {"licence", "carteIdentification", "passport"};%>
<%! String typeE[] = {"gasoline", "diesel", "propane"};%>
<%! String typeT[] = {"manuelle", "automatique", "semi-automatique", "variation-continue", "double-ambrayage"};%>
<%@page import="model.GestionVh"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page de Modification</title
    </head>
    <body>
        <% GestionVh gv = (GestionVh) session.getAttribute("liste");%>

        <form action="${pageContext.request.contextPath}/GestionVhServlet?action=modifier" method="post">
            <!-- Type de véhicule -->
            <select name="type_v" id="">
                <%for (String tv : typeV) {%>
                <option value="<%=tv%>" <%=gv != null && gv.getType_v().equalsIgnoreCase(tv) ? "selected" : tv%>><%=tv%></option>
                <%}%>
            </select>
            <!-- ID vehicule-->
            <input type="text" name="id_v"  placeholder="Id vehicule" value="<%= gv != null ? gv.getId_vehicule() : 0%>">
            <!-- Marque -->
            <input type="text" name="marque" placeholder="Marque" value="<%=gv != null ? gv.getMarque() : ""%>">
            <!-- Modele -->
            <input type="text" name="modele" placeholder="Modele" value="<%=gv != null ? gv.getModele() : ""%>">
            <!-- No Moteur -->
            <input type="text" name="no_moteur" placeholder="Numero Moteur" value="<%=gv != null ? gv.getNo_moteur() : ""%>"> 
            <!-- Nombre de Cylindre -->
            <input type="text" name="nb_cylindre" placeholder="No Cylindre" value="<%=gv != null ? gv.getNb_cylindre() : ""%>">
            <!-- La couleur du vehicule -->
            <input type="text" name="couleur" placeholder="Couleur" value="<%=gv != null ? gv.getCouleur() : ""%>">
            <!-- Le nom et le prenom du proprietaire -->
            <input type="text" name="proprietaire" placeholder="Proprietaire (nom complet)" value="<%=gv != null ? gv.getProprietaire() : ""%>">
            <!-- La plaque d'immatriculation du vehicule -->
            <input type="text" name="plaque" placeholder="Plaque" value="<%=gv != null ? gv.getPlaque() : ""%>">
            <!-- Le numero de telephone du proprietaire -->
            <input type="text" name="tel" placeholder="Telephone" value="<%=gv != null ? gv.getTel_pro() : ""%>">
            <!-- Adresse propriétaire -->
            <input type="text" name="adresse" placeholder="Adresse Proprietaire" value="<%=gv != null ? gv.getAdresse_pro() : ""%>">
            <!-- Type pièce -->
            <select name="type_piece" id="">
                <%for (String tp : typeP) {%>
                <option value="<%=tp%>"<%=gv != null && gv.getType_piece().equalsIgnoreCase(tp) ? "selected" : tp%>><%=tp%></option>
<%}%>
            </select>
            <!-- No Piece -->
            <input type="text" name="no_piece" placeholder="Numero piece" value="<%=gv != null ? gv.getNo_piece() : ""%>">
            <!-- L'Année du vehicule -->
            <input type="text" name="annee" placeholder="Annee" value="<%=gv != null ? gv.getAnnee() : ""%>">
            <!-- Courriel propriétaire -->
            <input type="text" name="courriel" placeholder="Adresse email" value="<%=gv != null ? gv.getCourriel() : ""%>">
            <!-- Type transmission -->
            <select name="transmission" id="">
                <%for (String tt : typeT) {%> 
              <option value="<%=tt%>"<%=gv != null && gv.getTransmission().equalsIgnoreCase(tt)?"selected":tt%>><%=tt%></option>
              <%}%>
            </select>
            <!-- type d’essence -->
            <select name="essence" id="">
                 <%for (String te : typeE) {%>
                <option value="<%=te%>" <%=gv != null && gv.getType_v().equalsIgnoreCase(te) ? "selected" : te%>><%=te%></option>
                <%}%>
            </select>
            <!-- Photo du véhicule -->
            <input type="file" name="photo" placeholder="Photo Vehicule">
            <!-- Sur Alerte -->
            <input type="text" name="alerte" placeholder="alerte" value="<%=gv != null ? gv.getSur_alerte() : ""%>">
            <!-- Date Alerte lancée -->
            <input type="date" name="date_alerte" placeholder="Date Alerte" value="<%=gv != null ? gv.getDate_alerte() : ""%>">
            <!-- Date enregistrement -->
            <input type="date" name="date_enre" placeholder="Date Enregistrement" value="<%=gv != null ? gv.getDate_enre() : ""%>">
            <!-- bouton submit -->
            <input type="submit" value="Modifier">
        </form>
    </body>
</html>
