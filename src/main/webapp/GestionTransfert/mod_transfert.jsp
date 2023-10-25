<%-- 
    Document   : mod_Transfert
    Created on : Oct 18, 2023, 6:59:31 PM
    Author     : Eddy
--%>
<%@page import="model.TransfertModel"%>
<%@page import = "java.util.List"%>
<%! String sexe[] = {"masculin", "feminin",};%>
<%! String typeP[] = {"license", "carte identification", "Passeport",};%>
<%! String etat[] = {"A", "N", "E"};%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="containerIn">
                <h1>Modifier un Transfert</h1>

                <%TransfertModel tm = (TransfertModel) session.getAttribute("liste");%>

                <a href="${pageContext.request.contextPath}/TransfertServlet"><i class="bi bi-arrow-left-square"></i></a>
                <form  method="post" action="${pageContext.request.contextPath}/TransfertServlet?action=modifier">
                    <input type="text" disabled class="form-control" name="id_trans" value="<%= tm != null ? tm.getId_trans() : 0%>">
                    <label for="id_vehicule" class="form-label">id_vehicule</label>
                    <input type="number" class="form-control" name="id_vehicule" id="id_vehicule" value="<%= tm != null ? tm.getId_vehicule() : 0%>"><br><br>
                    <label for="nouveau_prop" class="form-label">Nouveau proprietaire</label>
                    <input type="text" class="form-control" name="nouveau_prop" placeholder="Nom_complet" value="<%= tm != null ? tm.getNouveau_prop() : ""%>"> <br><br>      

                    <label for="sexe" class="form-label">Sexe</label>
                    <select id="" name="sexe">
                        <% for (String sx : sexe) {%>
                        <option value="<%=sx%>" <%= tm != null && tm.getSexe().equalsIgnoreCase(sx) ? "selected" : sx%>><%=sx%></option>
                        <%}%>
                    </select> <br><br>
                    <label for="telephone" class="form-label">Telephone</label>
                    <input type="text" class="form-control" name="telephone" id="telephone" value="<%= tm != null ? tm.getTelephone() : ""%>"><br><br>
                    <label for="adresse" class="form-label">Adresse</label>
                    <input type="text" class="form-control" name="adresse" id="adresse" value="<%= tm != null ? tm.getAdresse() : ""%>"><br><br>

                    <label for="type_piece" class="form-label">Type Pieces</label>  
                    <select id="type_piece" name="type_piece">
                        <%for (String tp : typeP) {%>
                        <option value ="<%=tp%>" <%= tm != null && tm.getType_piece().equalsIgnoreCase(tp) ? "selected" : tp%>><%=tp%></option>
                        <%}%>
                    </select> <br><br>
                    <label for="no_piece" class="form-label">No Piece</label>
                    <input type="text" class="form-control" name="no_piece" id="no_piece" value="<%= tm != null ? tm.getNo_piece() : ""%>"> <br><br>
                    <label for="motif_trans" class="form-label">Motif Transfert</label>
                    <input type="text" class="form-control" name="motif_trans" id="motif_trans" value="<%= tm != null ? tm.getMotif_trans() : ""%>"> <br><br>
                    <label for="date_trans" class="form-label">Date transfert</label>
                    <input type="date" class="form-control" name="date_trans" id="date_trans" value="<%= tm != null ? tm.getDate_trans() : ""%>"> <br><br>
                    <label for="etat" class="form-label">Etat</label>
                    <select id="etat" name="etat">
                        <%for (String et : etat) {%>
                        <option value="<%=et%>"<%= tm != null && tm.getEtat().equalsIgnoreCase(et) ? "selected" : et%>><%=et%></option>
                        <%}%>
                    </select>
                    <input type="submit" class="form-control" value="Save">
                </form>
            </div>
        </div>
    </body>
</html>
