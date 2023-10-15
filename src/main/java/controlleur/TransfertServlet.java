/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.TransfertDao;
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
import model.TransfertModel;

/**
 *
 * @author laine
 */
public class TransfertServlet extends HttpServlet {
TransfertDao tdao = new TransfertDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try {
        save(request, response);
    } catch (ClassNotFoundException ex) {
        Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
    } catch (SQLException ex) {
        Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
    }
    }
  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



protected void save(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        TransfertModel model = new TransfertModel();
        model.setId_vehicule(Integer.parseInt(request.getParameter("id_vehicule")));
        model.setNouveau_prop(request.getParameter("nouveau_prop"));
        model.setSexe(request.getParameter("sexe"));
        model.setTelephone(request.getParameter("telephone"));
         model.setAdresse(request.getParameter("adresse"));
         model.setType_piece(request.getParameter("type_piece"));
         model.setNo_piece(request.getParameter("no_piece"));
         model.setSexe(request.getParameter("sexe"));
         model.setMotif_trans(request.getParameter("motif_trans"));
         model.setDate_trans(request.getParameter("date_trans"));
         model.setEtat(request.getParameter("etat"));
         if(tdao.save(model) != 0){
         liste(request, response);
         }   
}

    private void liste(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet.");
        // HttpSession session=request.getSession();
//        ListTransfertModel> listransfert = dao.getAll();
//        request.setAttribute("liste", listransfert);
//        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
    

    private void update(HttpServletRequest request, HttpServletResponse response) {
    }

}