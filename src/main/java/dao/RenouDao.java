/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Renou;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import utils.HibernateUtils;

/**
 *
 * @author laine
 */
public class RenouDao implements Iservices<Renou>{
Transaction transaction = null;
    @Override
    public int save(Renou obj) throws IOException, ClassNotFoundException, SQLException {
       int n=0;
       try(Session session = HibernateUtils.getSessionFactory().openSession()){
       transaction = session.getTransaction();
       transaction.begin();
       session.persist(obj);
       transaction.commit();
       n =1;
       }
       
       return n;
    }

    @Override
    public int supprimer(Renou obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Renou rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
         try(Session session = HibernateUtils.getSessionFactory().openSession()){
             Query query = session.createQuery("FROM Renou WHERE id_renou = :id");
             query.setParameter("id", id);
             List<Renou> result = query.list();
             if(!result.isEmpty()){
             return result.get(0);
             }else{
             return null;
             }
         
         }
    }

    @Override
    public int modifier(Renou obj) throws IOException, ClassNotFoundException, SQLException {
         int n=0;
       try(Session session = HibernateUtils.getSessionFactory().openSession()){
       transaction = session.getTransaction();
       transaction.begin();
       session.merge(obj);
       transaction.commit();
       n =1;
       }
       
       return n;
    }

    @Override
    public List<Renou> lister() throws IOException, ClassNotFoundException, SQLException {
     List<Renou> affich = null;
       try(Session session = HibernateUtils.getSessionFactory().openSession()){
       transaction = session.getTransaction();
       transaction.begin();
       affich = session.createQuery("FROM Renou", Renou.class).list();
       transaction.commit();
       
       }
       
       return affich;
    }
    
}
