/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import jakarta.persistence.Entity;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.TransfertModel;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import static sun.jvm.hotspot.HelloWorld.e;
import utils.HibernateUtils;

/**
 *
 * @author Eddy
 */
  
public class TransfertDao implements Iservices<TransfertModel> {
private SessionFactory sessionFactory=null;
    private Session session=null;

    @Override
    public int save(TransfertModel e) throws IOException, ClassNotFoundException, SQLException {
        int n =0;
        try{
           
     // recuperation de la sessionFactory
     sessionFactory=HibernateUtils.getSessionFactory();
     //ouverture d'une session
     session=sessionFactory.openSession();
     // demarrer la transaction
     session.getTransaction().begin();
     // persister l'objet Student s
     session.persist(e);
     // commit la transaction
     session.getTransaction().commit();
     // fermer la session
     n =1;
     session.close();
        }catch(HibernateException ex){
            
        }
        return n;
    }

    @Override
    public int supprimer(TransfertModel obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public TransfertModel rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int modifier(TransfertModel obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<TransfertModel> lister() throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
}
