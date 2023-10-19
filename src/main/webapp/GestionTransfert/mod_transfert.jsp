<%-- 
    Document   : mod_Transfert
    Created on : Oct 18, 2023, 6:59:31 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Modifier un Transfert</h1>
        <hr>
        <br>
        <form  method="post" action="${pageContext.request.contextPath}/TransfertServlet">
            <label for="id_vehicule" >id_vehicule</label>
            <input type="number" name="id_vehicule" id="id_vehicule"><br><br>
            <label for="nouveau_prop">Nouveau proprietaire</label>
            <input type="text" name="nouveau_prop" placeholder="Nom_complet"> <br><br>      

            <label for="sexe">Sexe</label>
            <select id="sexe" name="sexe">
                <option value="masculin">Masculin</option>
                <option value="feminin">Feminin</option>
            </select> <br><br>
            <label for="telephone" >Telephone</labe>
                <input type="text" name="telephone" id="telephone"><br><br>
                <label for="adresse" >Adresse</labe>
                    <input type="text" name="adresse" id="adresse" ><br><br>

                    <label for="type_piece">Type Pieces</label>   
                    <select id="type_piece" name="type_piece">
                        <option value="licence">Licence</option>
                        <option value="carte_identification">Carte Identification</option>
                        <option value="pasport">Pasport</option>
                    </select> <br><br>
                    <label for="no_piece" >No Piece</labe>
                        <input type="text" name="no_piece" id="no_piece"> <br><br>
                        <label for="motif_trans" >Motif Transfert</labe>
                            <input type="text" name="motif_trans" id="motif_trans"> <br><br>
                            <label for="date_trans" >Date transfert</labe>
                                <input type="date" name="date_trans" id="date_trans"> <br><br>
                                <label for="etat" >Etat</labe>
                                <select id="etat" name="etat">
                                    <option value="a">A</option>
                                    <option value="n">N</option>
                                    <option value="e">E</option>
                                </select>
                                    <input type="submit" value="Save">
                                    </form>
    </body>
</html>
