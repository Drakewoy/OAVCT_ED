/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author laine
 */
public interface Iservices<T> {

    int save(T obj) throws IOException, ClassNotFoundException, SQLException;

    int supprimer(T obj) throws IOException, ClassNotFoundException, SQLException;

    T rechercher(String id) throws IOException, ClassNotFoundException, SQLException;

    int modifier(T obj) throws IOException, ClassNotFoundException, SQLException;

    List<T> lister() throws IOException, ClassNotFoundException, SQLException;
}
