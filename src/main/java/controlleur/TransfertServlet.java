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
import static jdk.nashorn.internal.runtime.Debug.id;
import model.TransfertModel;

/**
 *
 * @author laine
 */
public class TransfertServlet extends HttpServlet {
    final String enre_trans = "GestionTransfert/accueilTrans.jsp";
    final String modifier_t = "GestionTransfert/mod_transfert.jsp";
    TransfertDao tdao = new TransfertDao();
    private String id_vehicule;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
        try {
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        TransfertModel tmodel = tdao.rechercher(id);
        if(action.equals("enre_trans")){
           response.sendRedirect(enre_trans);
        } else if (action.equals("modifier_t"))
           if (tmodel == null){
           //liste(request, response);
           }else{
                    HttpSession session = request.getSession();
                    session.setAttribute("liste", tmodel);
                    response.sendRedirect(modifier_t);
                    }
         else if (action.equals("supprimer")){
         supprimer(request, response);
         } else if (action.equals("lister")){
             lister(request, response);
         }    
            } catch (ClassNotFoundException ex) {
            Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TransfertServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    try {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        switch(action){
            case "enre_trans":  save(request, response);
            break;
            case "modifier_t": modifier(request, response);
            break;
            default: lister(request, response);
        }
       
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
       try {
            tdao.save(model);
            HttpSession session = request.getSession();
            session.setAttribute("model", model);
            lister(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (UnsupportedOperationException ex) {
            Logger.getLogger(GestionVhServlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    } 

    private void lister(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {
        List<TransfertModel> afficher = null;
        try {
            afficher = tdao.lister();
            HttpSession session = request.getSession();
            session.setAttribute("liste", afficher);
            response.sendRedirect("GestionTransfert/enre_transfert.jsp");

        } catch (UnsupportedOperationException ex) {
            Logger.getLogger(TransfertServlet.class
                    .getName()).log(Level.SEVERE, null, ex);

        }

    }

    
      private void supprimer(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ClassNotFoundException, SQLException, ServletException {
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        TransfertModel tm = new TransfertModel();
        if (tdao.rechercher(id) != null) {
            tm.setId_vehicule(Integer.parseInt((id)));
            if (tdao.supprimer(tm) > 0) {
                lister(request, response);
            } else {
                out.print("Suppression echoue");
            }
        }
    }  
     
    private void modifier(HttpServletRequest request, HttpServletResponse response) 
            throws IOException, ClassNotFoundException, SQLException, ServletException {
        PrintWriter out = response.getWriter();
        TransfertModel model = new TransfertModel();
        String id = request.getParameter("id_vehicule");
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
         if (tdao.rechercher(id) != null) {
            model.setId_vehicule(Integer.parseInt(id));
            if (tdao.modifier(model) > 0) {
                lister(request, response);
            } else {
                out.print("Mise a jour echoue");
            }
    }
  }
}

   
