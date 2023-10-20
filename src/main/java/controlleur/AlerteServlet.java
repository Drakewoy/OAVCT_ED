/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.AlerteDao;
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
import model.Alerte;

/**
 *
 * @author laine
 */
public class AlerteServlet extends HttpServlet {

    final String alerte = "Alerte/alerte.jsp";
    final String enre_alerte = "Alerte/enre_alerte.jsp";
    final String modifier = "Alerte/mod_alerte.jsp";
    AlerteDao aDao = new AlerteDao();
    Alerte av = new Alerte();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        String action = req.getParameter("action");
        try {
            if (action == null) {
                lister(req, res);
            } else if (action.equals("modifier")) {
                av = aDao.rechercher(id);
                HttpSession session = req.getSession();
                session.setAttribute("liste", av);
                res.sendRedirect(modifier);
            } else if (action.equals("enregistrer")) {
                res.sendRedirect(enre_alerte);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        String action = req.getParameter("action");
        if (action == null) {
            try {
                lister(req, res);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("modifier")) {
            try {
                modifier(req, res);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("enregistrer")) {
            try {
                enregistrer(req, res);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(AlerteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    protected void enregistrer(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        Alerte av = new Alerte();
        av.setId_vehicule(Integer.parseInt(req.getParameter("id_vehicule")));
        av.setType_alerte(req.getParameter("typeA"));
        av.setLieu_incident(req.getParameter("lieu_inci"));
        av.setHeure_incident(req.getParameter("heure_inci"));
        av.setDeclarant(req.getParameter("declarant"));
        av.setDescription(req.getParameter("description"));
        aDao.save(av);
        lister(req, res);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void lister(HttpServletRequest req, HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException {
        List<Alerte> liste = aDao.lister();
        HttpSession session = req.getSession();
        session.setAttribute("liste", liste);
        res.sendRedirect(alerte);
    }

    private void modifier(HttpServletRequest req, HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException {
        PrintWriter out = res.getWriter();
        Alerte av = new Alerte();
        String id = req.getParameter("id_alerte");
        av.setId_vehicule(Integer.parseInt(req.getParameter("id_vehicule")));
        av.setType_alerte(req.getParameter("typeA"));
        av.setLieu_incident(req.getParameter("lieu_inci"));
        av.setHeure_incident(req.getParameter("heure_inci"));
        av.setDeclarant(req.getParameter("declarant"));
        av.setDescription(req.getParameter("description"));
        if (aDao.rechercher(id) != null) {
            av.setId_alerte(Integer.parseInt(id));
            if (aDao.modifier(av) > 0) {
                lister(req, res);
            } else {
                out.print("Mise a jour echoue");
            }
        }
    }

}
