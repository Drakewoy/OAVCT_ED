/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author laine
 */
public class Transfere {

    private int id_trans;
    private int id_vehicule;
    private String nouveau_prop;
    private String sexe;
    private String telephone;
    private String adresse;
    private String type_piece;
    private String no_piece;
    private String motif_trans;
    private String date_trans;
    private String etat;

    // constructeur
    public Transfere() {
    }

    public Transfere(int id_trans, int id_vehicule, String nouveau_prop, String sexe, String telephone, String adresse, String type_piece, String no_piece, String motif_trans, String date_trans, String etat) {
        this.id_trans = id_trans;
        this.id_vehicule = id_vehicule;
        this.nouveau_prop = nouveau_prop;
        this.sexe = sexe;
        this.telephone = telephone;
        this.adresse = adresse;
        this.type_piece = type_piece;
        this.no_piece = no_piece;
        this.motif_trans = motif_trans;
        this.date_trans = date_trans;
        this.etat = etat;
    }

    // Getters and Setters
    public int getId_trans() {
        return id_trans;
    }

    public void setId_trans(int id_trans) {
        this.id_trans = id_trans;
    }

    public int getId_vehicule() {
        return id_vehicule;
    }

    public void setId_vehicule(int id_vehicule) {
        this.id_vehicule = id_vehicule;
    }

    public String getNouveau_prop() {
        return nouveau_prop;
    }

    public void setNouveau_prop(String nouveau_prop) {
        this.nouveau_prop = nouveau_prop;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getType_piece() {
        return type_piece;
    }

    public void setType_piece(String type_piece) {
        this.type_piece = type_piece;
    }

    public String getNo_piece() {
        return no_piece;
    }

    public void setNo_piece(String no_piece) {
        this.no_piece = no_piece;
    }

    public String getMotif_trans() {
        return motif_trans;
    }

    public void setMotif_trans(String motif_trans) {
        this.motif_trans = motif_trans;
    }

    public String getDate_trans() {
        return date_trans;
    }

    public void setDate_trans(String date_trans) {
        this.date_trans = date_trans;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

}
