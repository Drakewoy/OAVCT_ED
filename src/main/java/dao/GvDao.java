/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.GestionVh;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import utils.HibernateUtils;

/**
 *
 * @author laine
 */
public class GvDao implements Iservices<GestionVh> {

    Transaction transaction = null;
//    enregistrer vehicule

    @Override
    public int save(GestionVh obj) throws IOException, ClassNotFoundException, SQLException, UnsupportedOperationException {
        int e = 0; // Etat de l'enregistrement 0 (void)
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            session.persist(obj);
            transaction.commit();
            e = 1;
        }
        return e;
    }

    @Override
    public int supprimer(GestionVh obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public GestionVh rechercher(String id) throws IOException, ClassNotFoundException, SQLException {
    try (Session session = HibernateUtils.getSessionFactory().openSession()) {
        // Create a query to select a GestionVh object by its ID
        Query query = session.createQuery("FROM GestionVh WHERE id_vehicule = :id");
        query.setParameter("id", id);

        // Execute the query and get the result
        List<GestionVh> result = query.list();

        // Check if a matching GestionVh object was found
        if (!result.isEmpty()) {
            return result.get(0); // Assuming ID is unique, so returning the first match
        } else {
            return null; // No matching GestionVh found
        }
    } catch (HibernateException ex) {
        ex.printStackTrace();
        throw new SQLException("Error searching for GestionVh: " + ex.getMessage());
    }
}

    @Override
    public int modifier(GestionVh obj) throws IOException, ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<GestionVh> lister() throws IOException, ClassNotFoundException, SQLException, UnsupportedOperationException {
        List<GestionVh> affich = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            transaction = session.getTransaction();
            transaction.begin();
            affich = session.createQuery("FROM GestionVh", GestionVh.class).list();
            transaction.commit();
        }

        return affich;
    }

}
