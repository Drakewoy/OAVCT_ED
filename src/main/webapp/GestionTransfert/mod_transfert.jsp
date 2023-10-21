<%-- 
    Document   : mod_Transfert
    Created on : Oct 18, 2023, 6:59:31 PM
    Author     : Eddy
--%>
<%@page import="model.TransfertModel"%>
<%@page import = "java.util.List"%>
<%! String sexe[] = {"masculin", "feminin",};%>
<%! String typeP [] = {"license","carte identification", "Passeport",};%>
<%! String etat[] = {"A", "N","E"};%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
         <h1>Modifier un Transfert</h1>
        <hr>
        <%TransfertModel tm = (TransfertModel) session.getAttribute("list");%>
        <br>
        <form  method="post" action="${pageContext.request.contextPath}/TransfertServlet?action=modifier_t">
            <label for="id_vehicule" >id_vehicule</label>
            <input type="number" name="id_vehicule" id="id_vehicule" value="<%= tm != null ? tm.getId_vehicule() : 0 %>"><br><br>
            <label for="nouveau_prop">Nouveau proprietaire</label>
            <input type="text" name="nouveau_prop" placeholder="Nom_complet" value="<%= tm != null ? tm.getNouveau_prop() : ""%>"> <br><br>      

            <label for="sexe">Sexe</label>
            <select id="" name="sexe">
                <% for (String sx :sexe ){%>
                <option value="<%=sx%>" <%= tm != null && tm.getSexe().equalsIgnoreCase(sx)? "selected" : sx %>><%=sx%>></option>
                <%}%>
            </select> <br><br>
            <label for="telephone" >Telephone</labe>
            <input type="text" name="telephone" id="telephone" value="<%= tm != null ? tm.getTelephone(): "" %>"><br><br>
                <label for="adresse" >Adresse</labe>
                    <input type="text" name="adresse" id="adresse" value="<%= tm != null ? tm.getAdresse(): "" %>><br><br>

                    <label for="type_piece">Type Pieces</label>  
                    <select id="type_piece" name="type_piece">
                         <%for (String tp : typeP){%>
                         <option value ="<%=tp%>" <%= tm != null && tm.getType_piece().equalsIgnoreCase(tp) ? "selected" : tp%>><%=tp%></option>
                        <%}%>
                    </select> <br><br>
                    <label for="no_piece" >No Piece</labe>
                        <input type="text" name="no_piece" id="no_piece" value="<%= tm != null ? tm.getNo_piece(): "" %>> <br><br>
                        <label for="motif_trans" >Motif Transfert</labe>
                            <input type="text" name="motif_trans" id="motif_trans" value="<%= tm != null ? tm.getMotif_trans(): "" %>> <br><br>
                            <label for="date_trans" >Date transfert</labe>
                                <input type="date" name="date_trans" id="date_trans" value="<%= tm != null ? tm.getDate_trans(): "" %>> <br><br>
                                <label for="etat" >Etat</labe>
                                <select id="etat" name="etat">
                                    <%for(String et : etat){%>
                                    <option value="<%=et%>"<%= tm != null && tm.getEtat().equalsIgnoreCase(et) ? "selected" : et %>><%=et%></option>
                                   <%}%>
                                </select>
                                    <input type="submit" value="Save">
                                    </form>
    
</html>
