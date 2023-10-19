/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.GvDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.GestionVh;

/**
 *
 * @author laine
 */
public class GestionVhServlet extends HttpServlet {

    GvDao gvDa = new GvDao();
    // Quelque page static
    final String ajouter = "Gestionvh/enre_vehicule.jsp";
    final String modifier = "Gestionvh/mod_vehicule.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        try {
            String action = req.getParameter("action");
            String id = req.getParameter("id");
            GestionVh gv = gvDa.rechercher(id);
            if (action.equals("ajouter")) {
                res.sendRedirect(ajouter);
            } else if (action.equals("modifier")) {
                if (gv == null) {
                 //lister(req, res);
                } else {
                    HttpSession session = req.getSession();
                    session.setAttribute("liste", gv);
                    res.sendRedirect(modifier);
                }

            } else if (action.equals("supprimer")) {
                supprimer(req, res);
            } else if (action.equals("lister")) {
                lister(req, res);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String action = req.getParameter("action");
            switch (action) {
                case "ajouter":
                    enregistrer(req, res);
                    break;
                case "modifier":
                    modifier(req, res);
                    break;
                default:
                    lister(req, res);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    // Enregistrer un vehicule
    protected void enregistrer(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException, ClassNotFoundException {

        GestionVh gv = new GestionVh();
        gv.setType_v(req.getParameter("type_v"));
        gv.setMarque(req.getParameter("marque"));
        gv.setModele(req.getParameter("modele"));
        gv.setNo_moteur(req.getParameter("no_moteur"));
        gv.setNb_cylindre(Integer.parseInt(req.getParameter("nb_cylindre")));
        gv.setCouleur(req.getParameter("couleur"));
        gv.setProprietaire(req.getParameter("proprietaire"));
        gv.setPlaque(req.getParameter("plaque"));
        gv.setTel_pro(req.getParameter("tel"));
        gv.setAdresse_pro(req.getParameter("adresse"));
        gv.setType_piece(req.getParameter("type_piece"));
        gv.setNo_piece(req.getParameter("no_piece"));
        gv.setAnnee(req.getParameter("annee"));
        gv.setCourriel(req.getParameter("courriel"));
        gv.setTransmission(req.getParameter("transmission"));
        gv.setType_essence(req.getParameter("essence"));
        gv.setPhoto(req.getParameter("photo"));
        gv.setSur_alerte(req.getParameter("alerte"));
        gv.setDate_alerte(req.getParameter("date_alerte"));
        gv.setDate_enre(req.getParameter("date_enre"));
        try {
            gvDa.save(gv);
            HttpSession session = req.getSession();
            session.setAttribute("gv", gv);
            lister(req, res);

        } catch (SQLException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (UnsupportedOperationException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }
    // Lister

    protected void lister(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<GestionVh> afficher = null;
        try {
            afficher = gvDa.lister();
            HttpSession session = req.getSession();
            session.setAttribute("liste", afficher);
            res.sendRedirect("Gestionvh/gestion.jsp");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (SQLException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (UnsupportedOperationException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }
//    La methode update

    private void modifier(HttpServletRequest req, HttpServletResponse res)
            throws SQLException, ClassNotFoundException, IOException, ServletException {
        PrintWriter out = res.getWriter();
        GestionVh gvMod = new GestionVh();
        String id = req.getParameter("id_v");
        gvMod.setType_v(req.getParameter("type_v"));
        gvMod.setMarque(req.getParameter("marque"));
        gvMod.setModele(req.getParameter("modele"));
        gvMod.setNo_moteur(req.getParameter("no_moteur"));
        gvMod.setNb_cylindre(Integer.parseInt(req.getParameter("nb_cylindre")));
        gvMod.setCouleur(req.getParameter("couleur"));
        gvMod.setProprietaire(req.getParameter("proprietaire"));
        gvMod.setPlaque(req.getParameter("plaque"));
        gvMod.setTel_pro(req.getParameter("tel"));
        gvMod.setAdresse_pro(req.getParameter("adresse"));
        gvMod.setType_piece(req.getParameter("type_piece"));
        gvMod.setNo_piece(req.getParameter("no_piece"));
        gvMod.setAnnee(req.getParameter("annee"));
        gvMod.setCourriel(req.getParameter("courriel"));
        gvMod.setTransmission(req.getParameter("transmission"));
        gvMod.setType_essence(req.getParameter("essence"));
        gvMod.setPhoto(req.getParameter("photo"));
        gvMod.setSur_alerte(req.getParameter("alerte"));
        gvMod.setDate_alerte(req.getParameter("date_alerte"));
        gvMod.setDate_enre(req.getParameter("date_enre"));
        if (gvDa.rechercher(id) != null) {
            gvMod.setId_vehicule(Integer.parseInt(id));
            if (gvDa.modifier(gvMod) > 0) {
                lister(req, res);
            } else {
                out.print("Mise a jour echoue");
            }
        }

    }

    private void supprimer(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ClassNotFoundException, SQLException, ServletException {
        PrintWriter out = res.getWriter();
        String id = req.getParameter("id");
        GestionVh gv = new GestionVh();
        if (gvDa.rechercher(id) != null) {
            gv.setId_vehicule(Integer.parseInt((id)));
            if (gvDa.supprimer(gv) > 0) {
                lister(req, res);
            } else {
                out.print("Suppression echoue");
            }
        }
    }

}
