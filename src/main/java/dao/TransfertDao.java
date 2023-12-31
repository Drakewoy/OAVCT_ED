/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import controlleur.TransfertServlet;
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
import org.hibernate.query.Query;
import static sun.jvm.hotspot.HelloWorld.e;
import utils.HibernateUtils;

/**
 *
 * @author Eddy
 */
public class TransfertDao implements Iservices<TransfertModel> {

    Transaction transaction = null;
    private SessionFactory sessionFactory = null;
    private Session session = null;

    @Override
    public int save(TransfertModel e) throws IOException, ClassNotFoundException, SQLException {
        int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.persist(e);
            transaction.commit();
            n = 1;
        }
        return n;
    }

    @Override
    public int supprimer(TransfertModel obj) throws IOException, ClassNotFoundException, SQLException {
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
    public TransfertModel rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            Query query = session.createQuery("FROM TransfertModel Where id_trans = :id");
            query.setParameter("id", id);
            List<TransfertModel> result = query.list();

            if (!result.isEmpty()) {
                return result.get(0);
            } else {

                return null;
            }

        }
    }

    @Override
    public int modifier(TransfertModel obj) throws IOException, ClassNotFoundException, SQLException {

        int n = 0;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.merge(obj);
            transaction.commit();
            n = 1;
            session.close();
        }
        return n;
    }

    @Override
    public List<TransfertModel> lister() throws IOException, ClassNotFoundException, SQLException {
        List<TransfertModel> afficher = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            afficher = session.createQuery("FROM TransfertModel", TransfertModel.class).list();
            transaction.commit();
        }
        return afficher;

    }

}
