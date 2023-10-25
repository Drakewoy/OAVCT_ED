<%-- 
    Document   : enre_vehicule
    Created on : Oct 9, 2023, 9:29:20 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <div class="containerF">
            <div class="containerIn">
                <a href="${pageContext.request.contextPath}/GestionVhServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form action="${pageContext.request.contextPath}/GestionVhServlet?action=ajouter" method="post">
                    <!-- Type de véhicule -->
                    <select name="type_v" id="">
                        <option value="motocyclette">Motocyclette</option>
                        <option value="voiture">Voiture</option>
                        <option value="poidsLourds">Poids lourds</option>
                    </select>
                    <!-- ID vehicule-->
                    <input type="text" name="id_v" placeholder="Id vehicule" class="form-control">
                    <!-- Marque -->
                    <input type="text" name="marque" placeholder="Marque" class="form-control">
                    <!-- Modele -->
                    <input type="text" name="modele" placeholder="Modele" class="form-control">
                    <!-- No Moteur -->
                    <input type="text" name="no_moteur" placeholder="Numero Moteur" class="form-control">
                    <!-- Nombre de Cylindre -->
                    <input type="text" name="nb_cylindre" placeholder="No Cylindre" class="form-control">
                    <!-- La couleur du vehicule -->
                    <input type="text" name="couleur" placeholder="Couleur" class="form-control">
                    <!-- Le nom et le prenom du proprietaire -->
                    <input type="text" name="proprietaire" placeholder="Proprietaire (nom complet)"class="form-control">
                    <!-- La plaque d'immatriculation du vehicule -->
                    <input type="text" name="plaque" placeholder="Plaque" class="form-control">
                    <!-- Le numero de telephone du proprietaire -->
                    <input type="text" name="tel" placeholder="Telephone" class="form-control">
                    <!-- Adresse propriétaire -->
                    <input type="text" name="adresse" placeholder="Adresse Proprietaire" class="form-control">
                    <!-- Type pièce -->
                    <select name="type_piece" id="">
                        <option selected>Type de piece</option>
                        <option value="licence">Licence</option>
                        <option value="carteIdentification">Carte d'identification</option>
                        <option value="passport">Passport</option>
                    </select>
                    <!-- No Piece -->
                    <input type="text" name="no_piece" placeholder="Numero piece" class="form-control">
                    <!-- L'Année du vehicule -->
                    <input type="text" name="annee" placeholder="Annee">
                    <!-- Courriel propriétaire -->
                    <input type="text" name="courriel" placeholder="Adresse email" class="form-control">
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
                    <input type="file" name="photo" placeholder="Photo Vehicule" class="form-control">
                    <!-- Sur Alerte -->
                    <input type="text" name="alerte" placeholder="Sur Alerte" class="form-control">
                    <!-- Date Alerte lancée -->
                    <label for="date_alerte" class="form-label">Date D'alerte</label>
                    <input type="date" name="date_alerte" placeholder="Date Alerte" class="form-control">
                    <!-- Date enregistrement -->
                    <label for="date_enre" class="form-label">Date Enregistrement</label>
                    <input type="date" name="date_enre" placeholder="Date Enregistrement" class="form-control">
                    <!-- bouton submit -->
                    <input type="submit" class="form-control">
                </form>
            </div>
        </div>
    </body>
</html>