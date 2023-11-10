/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlleur;

import dao.LoginDao;
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
import model.Compte;

/**
 *
 * @author laine
 */
public class LoginServlet extends HttpServlet {

    String error1;
    String error;
    String idU = "";
    String userN = "";
    String passU = "";
    String typeCU = "";
    final String register = "register.jsp";
    final String accueil = "index.jsp";
    final String login = "login.jsp";
    LoginDao ldao = new LoginDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        HttpSession userSession = req.getSession();
        userSession.removeAttribute("login");
        userSession.removeAttribute("error");
        userSession.removeAttribute("error1");
        res.sendRedirect("login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    String action = req.getParameter("action");
    
    if (action.equals("register")) {
        try {
            enregistrer(req, res);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
          
        }
    } else if (action.equals("login")) {
        try {
            String nom = req.getParameter("user");
            String pass = req.getParameter("pass");

            List<Compte> liste = ldao.lister();

            boolean found = false; 

            if (liste != null && !liste.isEmpty()) {
                for (Compte ls : liste) {
                    idU = String.valueOf(ls.getId());
                    userN = ls.getUser();
                    passU = ls.getPass();
                    typeCU = ls.getTypeCompte();

                    if (nom.equals(userN) && pass.equals(passU)) {
                        found = true;
                        HttpSession session = req.getSession();
                        session.setAttribute("login", userN + "_" + idU);
                        req.getRequestDispatcher(accueil).forward(req, res);
                        break;
                    }
                }
            }

            if (!found) {
                error1 = "Nom d'utilisateur ou Mot de passe est incorrect";
                HttpSession session = req.getSession();
                session.setAttribute("error1", error1);
                req.getRequestDispatcher(login).forward(req, res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
          
        }
    } else {
        res.sendRedirect(login);
    }
}

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    protected void enregistrer(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        Compte cmp = new Compte();
        cmp.setUser(req.getParameter("user"));
        cmp.setPass(req.getParameter("pass"));
        cmp.setTypeCompte(req.getParameter("Compte"));
        if (ldao.save(cmp) > 0) {
            res.sendRedirect(login);
        }
    }
}
