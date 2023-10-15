<%-- 
    Document   : enre_transfert
    Created on : Oct 10, 2023, 11:03:31 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
    </head>
    <body>
        <h1>Enregistrement nouveau transfert</h1>
        <hr>
        <br>
        <form  method="post" action="${pageContext.request.contextPath}/TransfertServlet">
            <label for="id_vehicule" >id_vehicule</label>
            <input type="number" name="id_vehicule" id="id_vehicule"><br><br>
            <label for="nouveau_prop">Nouveau proprietaire</label>
            <input type="string" name="nom" placeholder="Nom_complet" id="nouveau_prop">      

            <label for="sexe">Sexe</label>
            <select id="sexe">
                <option value="masculin">Masculin</option>
                <option value="feminin">Feminin</option>
            </select> <br><br>
            <label for="telephone" >Telephone</labe>
                <input type="string" name="telephone" id="telephone"><br><br>
                <label for="adresse" >Adresse</labe>
                    <input type="string" name="adresse" id="adresse" ><br><br>

                    <label for="type_piece">Type Pieces</label>   
                    <select id="type_pieces">
                        <option value="licence">Licence</option>
                        <option value="carte_identification">Carte Identification</option>
                        <option value="pasport">Pasport</option>
                    </select> <br><br>
                    <label for="no_piece" >No Piece</labe>
                        <input type="string" name="no_piece" id="no_piece"> <br><br>
                        <label for="motif_trans" >Motif Transfert</labe>
                            <input type="string" name="motif_trans" id="motif_trans"> <br><br>
                            <label for="date_trans" >Date transfert</labe>
                                <input type="string" name="date_trans" id="date_trans"> <br><br>
                                <label for="etat" >Etat</labe>
                                    <input type="string" name="etat" id="etat">
                                    <input type="submit" value="Enregistrer">
                                    </form>
                                    </body>
                                    </html>
