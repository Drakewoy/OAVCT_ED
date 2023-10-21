/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Alerte;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import utils.HibernateUtils;

/**
 *
 * @author laine
 */
public class AlerteDao implements Iservices<Alerte> {

    Transaction transaction = null;

    @Override
    public int save(Alerte obj) throws IOException, ClassNotFoundException, SQLException {
        int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.persist(obj);
            transaction.commit();
            n =1;
        }
        return n;
    }

    @Override
    public int supprimer(Alerte obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Alerte rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            Query query = session.createQuery("FROM Alerte WHERE id_alerte = :id");
            query.setParameter("id", id);
            List<Alerte> result = query.list();
            if (!result.isEmpty()) {
                return result.get(0);
            } else {
                return null;
            }
        }
    }

    @Override
    public int modifier(Alerte obj) throws IOException, ClassNotFoundException, SQLException {
        int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.merge(obj);
            transaction.commit();
            n =1;
        }
        return n;
    }

    @Override
    public List<Alerte> lister() throws IOException, ClassNotFoundException, SQLException {
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            List<Alerte> affich = session.createQuery("FROM Alerte", Alerte.class).list();
            transaction.commit();
            return affich;
        }
    }

}
