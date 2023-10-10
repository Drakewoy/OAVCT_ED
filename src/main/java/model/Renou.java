/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author laine
 */
public class Renou {
    private int id_renou;
    private int id_vehicule;
    private String no_transaction;
    private double montant_assu;
    private String date_paie;
    private String date_demission;
    
    // constructeur

    public Renou(int id_renou, int id_vehicule, String no_transaction, double montant_assu, String date_paie, String date_demission) {
        this.id_renou = id_renou;
        this.id_vehicule = id_vehicule;
        this.no_transaction = no_transaction;
        this.montant_assu = montant_assu;
        this.date_paie = date_paie;
        this.date_demission = date_demission;
    }
    
    // Getters and Setters

    public int getId_renou() {
        return id_renou;
    }

    public void setId_renou(int id_renou) {
        this.id_renou = id_renou;
    }

    public int getId_vehicule() {
        return id_vehicule;
    }

    public void setId_vehicule(int id_vehicule) {
        this.id_vehicule = id_vehicule;
    }

    public String getNo_transaction() {
        return no_transaction;
    }

    public void setNo_transaction(String no_transaction) {
        this.no_transaction = no_transaction;
    }

    public double getMontant_assu() {
        return montant_assu;
    }

    public void setMontant_assu(double montant_assu) {
        this.montant_assu = montant_assu;
    }

    public String getDate_paie() {
        return date_paie;
    }

    public void setDate_paie(String date_paie) {
        this.date_paie = date_paie;
    }

    public String getDate_demission() {
        return date_demission;
    }

    public void setDate_demission(String date_demission) {
        this.date_demission = date_demission;
    }
    
    
    
}
