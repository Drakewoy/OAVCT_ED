<%-- 
    Document   : enre_transfert
    Created on : Oct 10, 2023, 11:03:31 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-icons/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
    </head>
    <body>
        <div class="containerF">
            <div class="containerIn">
                <h1>Enregistrement un nouveau transfert</h1>
                <hr>
                <br>
                <a href="${pageContext.request.contextPath}/TransfertServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form  method="post" action="${pageContext.request.contextPath}/TransfertServlet?action=enre_trans">
                    <label for="id_vehicule" class="form-label">id_vehicule</label>
                    <input type="number" name="id_vehicule" id="id_vehicule" class="form-control"><br><br>
                    <label for="nouveau_prop" class="form-label">Nouveau proprietaire</label>
                    <input type="text" name="nouveau_prop" placeholder="Nom_complet" class="form-control"> <br><br>      

                    <label for="sexe" class="form-label">Sexe</label>
                    <select id="sexe" name="sexe" >
                        <option value="masculin">Masculin</option>
                        <option value="feminin">Feminin</option>
                    </select> <br><br>
                    <label for="telephone" class="form-label">Telephone</label>
                    <input type="text" name="telephone" id="telephone" class="form-control"><br><br>
                    <label for="adresse" class="form-label">Adresse</label>
                    <input type="text" name="adresse" id="adresse" class="form-control"><br><br>

                    <label for="type_piece" class="form-label">Type Pieces</label>   
                    <select id="type_piece" name="type_piece">
                        <option value="licence">Licence</option>
                        <option value="carte_identification">Carte Identification</option>
                        <option value="pasport">Pasport</option>
                    </select> <br><br>
                    <label for="no_piece" class="form-label">No Piece</label>
                    <input type="text" name="no_piece" id="no_piece" class="form-control"> <br><br>
                    <label for="motif_trans" class="form-label">Motif Transfert</label>
                    <input type="text" name="motif_trans" id="motif_trans" class="form-control"> <br><br>
                    <label for="date_trans" >Date transfert</label>
                    <input type="date" name="date_trans" id="date_trans" class="form-control"> <br><br>
                    <label for="etat" class="form-label">Etat</label>
                    <select id="etat" name="etat">
                        <option value="a">A</option>
                        <option value="n">N</option>
                        <option value="e">E</option>
                    </select>
                    <input type="submit" value="Save" class="form-control">
                </form>
            </div>
        </div>
    </body>
</html>
