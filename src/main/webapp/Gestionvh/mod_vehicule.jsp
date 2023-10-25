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
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page de Modification</title
    </head>
    <body>
        <div class="containerF">
            <div class="containerIn">
                <% GestionVh gv = (GestionVh) session.getAttribute("liste");%>
                <a href="${pageContext.request.contextPath}/GestionVhServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form action="${pageContext.request.contextPath}/GestionVhServlet?action=modifier" method="post">
                    <!-- Type de véhicule -->
                    <select name="type_v" id="">
                        <%for (String tv : typeV) {%>
                        <option value="<%=tv%>" <%=gv != null && gv.getType_v().equalsIgnoreCase(tv) ? "selected" : tv%>><%=tv%></option>
                        <%}%>
                    </select>
                    <!-- ID vehicule-->
                    <label for="id_v" class="form-label">Id Vehicule</label>
                    <input type="text" name="id_v" class="form-control" disabled placeholder="Id vehicule" value="<%= gv != null ? gv.getId_vehicule() : 0%>">
                    <!-- Marque -->
                    <label for="marque" class="form-label">Marque</label>
                    <input type="text" name="marque" class="form-control" placeholder="Marque" value="<%=gv != null ? gv.getMarque() : ""%>">
                    <!-- Modele -->
                    <label for="modele" class="form-label">Modele</label>
                    <input type="text" name="modele" class="form-control" placeholder="Modele" value="<%=gv != null ? gv.getModele() : ""%>">
                    <!-- No Moteur -->
                    <label for="no_moteur" class="form-label">Numero Moteur</label>
                    <input type="text" name="no_moteur" class="form-control" placeholder="Numero Moteur" value="<%=gv != null ? gv.getNo_moteur() : ""%>"> 
                    <!-- Nombre de Cylindre -->
                    <label for="nb_cylindre" class="form-label">Nombre de Cylindre</label>
                    <input type="text" name="nb_cylindre" class="form-control" placeholder="No Cylindre" value="<%=gv != null ? gv.getNb_cylindre() : ""%>">
                    <!-- La couleur du vehicule -->
                    <label for="couleur" class="form-label">Couleur</label>
                    <input type="text" name="couleur" class="form-control" placeholder="Couleur" value="<%=gv != null ? gv.getCouleur() : ""%>">
                    <!-- Le nom et le prenom du proprietaire -->
                    <label for="proprietaire" class="form-label">Proprietaire</label>
                    <input type="text" name="proprietaire" class="form-control" placeholder="Proprietaire (nom complet)" value="<%=gv != null ? gv.getProprietaire() : ""%>">
                    <!-- La plaque d'immatriculation du vehicule -->
                    <label for="palque" class="form-label">Plaque</label>
                    <input type="text" name="plaque" class="form-control" placeholder="Plaque" value="<%=gv != null ? gv.getPlaque() : ""%>">
                    <!-- Le numero de telephone du proprietaire -->
                    <label for="tel" class="form-label">Telephone</label>
                    <input type="text" name="tel" class="form-control" placeholder="Telephone" value="<%=gv != null ? gv.getTel_pro() : ""%>">
                    <!-- Adresse propriétaire -->
                    <label for="adresse" class="form-label">Adresse</label>
                    <input type="text" name="adresse" class="form-control" placeholder="Adresse Proprietaire" value="<%=gv != null ? gv.getAdresse_pro() : ""%>">
                    <!-- Type pièce -->
                    <select name="type_piece" id="">
                        <%for (String tp : typeP) {%>
                        <option value="<%=tp%>"<%=gv != null && gv.getType_piece().equalsIgnoreCase(tp) ? "selected" : tp%>><%=tp%></option>
                        <%}%>
                    </select>
                    <!-- No Piece -->
                    <label for="no_piece" class="form-label">Numero Piece</label>
                    <input type="text" name="no_piece" class="form-control" placeholder="Numero piece" value="<%=gv != null ? gv.getNo_piece() : ""%>">
                    <!-- L'Année du vehicule -->
                    <label for="annee" class="form-label">Annee</label>
                    <input type="text" name="annee" class="form-control" placeholder="Annee" value="<%=gv != null ? gv.getAnnee() : ""%>">
                    <!-- Courriel propriétaire -->
                    <label for="courriel" class="form-label">Courriel</label>
                    <input type="text" name="courriel" class="form-control" placeholder="Adresse email" value="<%=gv != null ? gv.getCourriel() : ""%>">
                    <!-- Type transmission -->
                    <select name="transmission" id="">
                        <%for (String tt : typeT) {%> 
                        <option value="<%=tt%>"<%=gv != null && gv.getTransmission().equalsIgnoreCase(tt) ? "selected" : tt%>><%=tt%></option>
                        <%}%>
                    </select>
                    <!-- type d’essence -->
                    <select name="essence" id="">
                        <%for (String te : typeE) {%>
                        <option value="<%=te%>" <%=gv != null && gv.getType_v().equalsIgnoreCase(te) ? "selected" : te%>><%=te%></option>
                        <%}%>
                    </select>
                    <!-- Photo du véhicule -->
                    <label for="photo" class="form-label">Photo</label>
                    <input type="file" name="photo" class="form-control" placeholder="Photo Vehicule">
                    <!-- Sur Alerte -->
                    <label for="alerte" class="form-label">Alerte</label>
                    <input type="text" name="alerte" class="form-control" placeholder="alerte" value="<%=gv != null ? gv.getSur_alerte() : ""%>">
                    <!-- Date Alerte lancée -->
                    <label for="date_alerte" class="form-label">Date Alerte</label>
                    <input type="date" name="date_alerte" class="form-control" placeholder="Date Alerte" value="<%=gv != null ? gv.getDate_alerte() : ""%>">
                    <!-- Date enregistrement -->
                    <label for="date_enre" class="form-label">Date Enregistrement</label>
                    <input type="date" name="date_enre" class="form-control" placeholder="Date Enregistrement" value="<%=gv != null ? gv.getDate_enre() : ""%>">
                    <!-- bouton submit -->
                    <input type="submit" class="form-control" value="Modifier">
                </form>
            </div>
        </div>
    </body>
</html>
