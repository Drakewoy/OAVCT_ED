/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author laine
 */
public class HibernateUtils {
    public static SessionFactory getSessionFactory(){
     Configuration config = new Configuration().configure("hibernate.cfg.xml");
     return config.buildSessionFactory();
    }
}
