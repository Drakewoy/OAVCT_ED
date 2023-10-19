 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.TransfertDao;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TransfertModel;

/**
 *
 * @author laine
 */
public class TransfertServlet extends HttpServlet {
    final String transfert = "GestionTransfert/accueilTrans.jsp";
    final String enre_trans = "GestionTransfert/mod_transfert.jsp";
TransfertDao tdao = new TransfertDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        String id = request.getParameter("id");
        TransfertModel tv = tdao.rechercher(id);
            PrintWriter out = response.getWriter();
            String action = request.getParameter("action");
            switch(action){
                case "transfert":
                    liste(request, response);
                    break;
                case "modifier" :
                    if(tv !=null){
                    HttpSession session = request.getSession();
                    session.setAttribute("liste", tv);
                    response.sendRedirect(enre_trans);
                    }
            }} catch (ClassNotFoundException ex) {
            Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
         model.setMotif_trans(request.getParameter("motif_trans"));
         model.setDate_trans(request.getParameter("date_trans"));
         model.setEtat(request.getParameter("etat"));
         if(tdao.save(model) != 0){
         liste(request, response);
         }   
}

    private void liste(HttpServletRequest request, HttpServletResponse response) 
            throws IOException, ClassNotFoundException, SQLException, ServletException {
         HttpSession session=request.getSession();
        List<TransfertModel> listransfert = tdao.lister();
        session.setAttribute("liste", listransfert);
        request.getRequestDispatcher(transfert).forward(request, response);
    }
    

    private void modifier(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException, ServletException {
    TransfertModel model = new TransfertModel();
        model.setId_vehicule(Integer.parseInt(request.getParameter("id_vehicule")));
        model.setNouveau_prop(request.getParameter("nouveau_prop"));
        model.setSexe(request.getParameter("sexe"));
        model.setTelephone(request.getParameter("telephone"));
         model.setAdresse(request.getParameter("adresse"));
         model.setType_piece(request.getParameter("type_piece"));
         model.setNo_piece(request.getParameter("no_piece"));
         model.setMotif_trans(request.getParameter("motif_trans"));
         model.setDate_trans(request.getParameter("date_trans"));
         model.setEtat(request.getParameter("etat"));
         if(tdao.save(model) != 0){
         liste(request, response);
         }else {
                 out.print("erreur");
    }
  }
}