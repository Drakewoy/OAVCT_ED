/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.RenouDao;
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
import model.Renou;

/**
 *
 * @author laine
 */
public class RenouServlet extends HttpServlet {

    RenouDao rvDa = new RenouDao();
    final String renou = "Renouvellement/renouvellement.jsp";
    final String enregistrer = "Renouvellement/ajouRenou.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
           if(action == null){
            lister(req, res);
           }else if(action.equals("renouvler")){
                  res.sendRedirect(enregistrer);
           }else{
          lister(req,res);
            }
          
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RenouServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RenouServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            enregistrer(req, res);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RenouServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RenouServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void lister(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ClassNotFoundException, SQLException {
       List<Renou> liste = rvDa.lister();
       HttpSession session = req.getSession();
       session.setAttribute("liste", liste);
       res.sendRedirect(renou);
    }

    private void enregistrer(HttpServletRequest req, HttpServletResponse res) throws IOException, ClassNotFoundException, SQLException {
        Renou rv = new Renou();
        rv.setId_vehicule(Integer.parseInt(req.getParameter("id_vehicule")));
        rv.setNo_transaction(req.getParameter("no_transaction"));
        rv.setMontant_assu(Double.parseDouble(req.getParameter("montantA")));
        rv.setDate_paie(req.getParameter("date_paie"));
        rv.setDate_demission(req.getParameter("date_dem"));
        if (rvDa.save(rv) > 0) {
            lister(req, res);
        }
    }
}
