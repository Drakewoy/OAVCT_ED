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
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet GestionVhServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet GestionVhServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
            try {
                enregistrer(req, res);
            } catch (ClassNotFoundException ex) {
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
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (UnsupportedOperationException ex) {
            Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    // Lister

    protected List<GestionVh> lister(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<GestionVh> afficher = null;
            try {
                afficher = gvDa.lister();
                HttpSession session = req.getSession();
                session.setAttribute("list", afficher);
                res.sendRedirect("Gestionvh/gestion.jsp");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (UnsupportedOperationException ex) {
                Logger.getLogger(GestionVhServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        return afficher;
    }
}
