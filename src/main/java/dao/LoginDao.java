/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Compte;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import utils.HibernateUtils;

/**
 *
 * @author laine
 */
public class LoginDao implements Iservices<Compte> {

    Transaction transaction = null;

    @Override
    public int save(Compte obj) throws IOException, ClassNotFoundException, SQLException {
        int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.persist(obj);
            transaction.commit();
            n = 1;
        }
        return n;
    }

    @Override
    public int supprimer(Compte obj) throws IOException, ClassNotFoundException, SQLException {
    int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.remove(obj);
            transaction.commit();
            n = 1;
        }
        return n;
    }

    @Override
    public Compte rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
     try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            Query query = session.createQuery("FROM Compte WHERE id = :id");
            query.setParameter("id", id);
            List<Compte> result = query.list();
            if (!result.isEmpty()) {
                return result.get(0); 
            } else {
                return null; 
            }
        } catch (HibernateException ex) {
            ex.printStackTrace();
            throw new SQLException("Error searching for Compte: " + ex.getMessage());
        }
    }

    @Override
    public int modifier(Compte obj) throws IOException, ClassNotFoundException, SQLException {
         int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.merge(obj);
            transaction.commit();
            n = 1;
        }
        return n; 
    }

    @Override
    public List<Compte> lister() throws IOException, ClassNotFoundException, SQLException {
        List<Compte> affich = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            affich = session.createQuery("FROM Compte", Compte.class).list();
            transaction.commit();
        }
        
        return affich;
    }

}
