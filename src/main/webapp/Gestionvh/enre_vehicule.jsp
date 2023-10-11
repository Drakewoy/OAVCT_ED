<%-- 
    Document   : enre_vehicule
    Created on : Oct 9, 2023, 9:29:20 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/GestionVhServlet" method="post">
        <!-- Type de véhicule -->
        <select name="type_v" id="">
            <option value="motocyclette">Motocyclette</option>
            <option value="voiture">Voiture</option>
            <option value="poidsLourds">Poids lourds</option>
        </select>
        <!-- ID vehicule-->
        <input type="text" name="id_v" placeholder="Id vehicule">
        <!-- Marque -->
        <input type="text" name="marque" placeholder="Marque">
        <!-- Modele -->
        <input type="text" name="modele" placeholder="Modele">
        <!-- No Moteur -->
        <input type="text" name="no_moteur" placeholder="Numero Moteur">
        <!-- Nombre de Cylindre -->
        <input type="text" name="nb_cylindre" placeholder="No Cylindre">
        <!-- La couleur du vehicule -->
        <input type="text" name="couleur" placeholder="Couleur">
        <!-- Le nom et le prenom du proprietaire -->
        <input type="text" name="proprietaire" placeholder="Proprietaire (nom complet)">
        <!-- La plaque d'immatriculation du vehicule -->
        <input type="text" name="plaque" placeholder="Plaque">
        <!-- Le numero de telephone du proprietaire -->
        <input type="text" name="tel" placeholder="Telephone">
        <!-- Adresse propriétaire -->
        <input type="text" name="adresse" placeholder="Adresse Proprietaire">
        <!-- Type pièce -->
        <select name="type_piece" id="">
            <option selected>Type de piece</option>
            <option value="licence">Licence</option>
            <option value="carteIdentification">Carte d'identification</option>
            <option value="passport">Passport</option>
        </select>
        <!-- No Piece -->
        <input type="text" name="no_piece" placeholder="Numero piece">
        <!-- L'Année du vehicule -->
        <input type="text" name="annee" placeholder="Annee">
        <!-- Courriel propriétaire -->
        <input type="text" name="courriel" placeholder="Adresse email">
        <!-- Type transmission -->
        <select name="transmission" id="">
            <option selected>Transmission</option>
            <option value="manuelle">Manuelle</option>
            <option value="automatique">Automatique</option>
            <option value="semi-automatique">Semi-Automatique</option>
            <option value="variation-continue">Variation-Continue</option>
            <option value="double-ambrayage">Double-Ambrayage</option>
        </select>
        <!-- type d’essence -->
        <select name="essence" id="">
         <option Selected>Type D'essence</option>
         <option value="gasoline">Gasoline</option>
         <option value="diesel">Diesel</option>
         <option value="propane">Propane</option>
        </select>
        <!-- Photo du véhicule -->
        <input type="file" name="photo" placeholder="Photo Vehicule">
        <!-- Sur Alerte -->
        <input type="text" name="alerte" placeholder="alerte">
        <!-- Date Alerte lancée -->
        <input type="date" name="date_alerte" placeholder="Date Alerte">
        <!-- Date enregistrement -->
        <input type="date" name="date_enre" placeholder="Date Enregistrement">
        <!-- bouton submit -->
        <input type="submit">
    </form>
</body>
</html>