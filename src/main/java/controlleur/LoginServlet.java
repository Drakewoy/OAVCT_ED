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
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        String nom = req.getParameter("user");
        String pass = req.getParameter("pass");
        String typeC = req.getParameter("compte");
        if (action.equals("register")) {
            try {
                enregistrer(req, res);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("login")) {
            try {
                PrintWriter out = res.getWriter();
                //            String id = ldao.rechercher(id);

                List<Compte> liste = ldao.lister();
                if (liste != null && !liste.isEmpty()) {
                    for (Compte ls : liste) {
                        idU = "" + ls.getId();
                        userN = ls.getUser();
                        passU = ls.getPass();
                        typeCU = ls.getTypeCompte();

                        if (nom.equals(userN) && pass.equals(passU)) {
                            HttpSession session = req.getSession();
                            session.setAttribute("login", userN + "_" + idU);
                            res.sendRedirect(accueil);

                        } else {
                            error1 = "Nom d'utilisateur ou Mot de pass est Incorrect";
                            HttpSession session = req.getSession();
                            session.setAttribute("error1", error1);
                            res.sendRedirect(login);
                        }

                    }

                } else {
                    error = "Aucun compte correspond a cet utilisateur";
                    HttpSession session = req.getSession();
                    session.setAttribute("error", error);
                    res.sendRedirect(register);
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            res.sendRedirect(login);
        }
//        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

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
