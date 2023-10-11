/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author laine
 */
@Entity
@Table(name = "gestionVehicule")
public class GestionVh {

    private String type_v; //  (Motocyclette, Voitures, Poids lourds, etc…)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_vehicule;
    private String marque;
    private String modele;
    private String no_moteur;
    private int nb_cylindre;
    private String couleur;
    private String proprietaire;
    private String plaque;
    private String tel_pro;
    private String adresse_pro;
    private String type_piece; // identification, Passeport
    private String no_piece;
    private String annee;
    private String courriel;
    private String transmission;
    private String type_essence; // Diesel, Gasoline, Propane
    private String photo;
    private String sur_alerte;
    private String date_alerte;
    private String date_enre;

    // Constructeur
    public GestionVh() {
    }

    public GestionVh(String type_v, int id_vehicule, String marque, String modele, String no_moteur, int nb_cylindre, String couleur, String proprietaire, String plaque, String tel_pro, String adresse_pro, String type_piece, String no_piece, String annee, String courriel, String transmission, String type_essence, String photo, String sur_alerte, String date_alerte, String date_enre) {
        this.type_v = type_v;
        this.id_vehicule = id_vehicule;
        this.marque = marque;
        this.modele = modele;
        this.no_moteur = no_moteur;
        this.nb_cylindre = nb_cylindre;
        this.couleur = couleur;
        this.proprietaire = proprietaire;
        this.plaque = plaque;
        this.tel_pro = tel_pro;
        this.adresse_pro = adresse_pro;
        this.type_piece = type_piece;
        this.no_piece = no_piece;
        this.annee = annee;
        this.courriel = courriel;
        this.transmission = transmission;
        this.type_essence = type_essence;
        this.photo = photo;
        this.sur_alerte = sur_alerte;
        this.date_alerte = date_alerte;
        this.date_enre = date_enre;
    }

    public String getType_v() {
        return type_v;
    }

    public void setType_v(String type_v) {
        this.type_v = type_v;
    }

    public int getId_vehicule() {
        return id_vehicule;
    }

    public void setId_vehicule(int id) {
        this.id_vehicule = id;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }
    
     public String getModele() {
        return modele;
    }

    public void setModele(String modele) {
        this.modele = modele;
    }

    public String getNo_moteur() {
        return no_moteur;
    }

    public void setNo_moteur(String no_moteur) {
        this.no_moteur = no_moteur;
    }

    public int getNb_cylindre() {
        return nb_cylindre;
    }

    public void setNb_cylindre(int nb_cylindre) {
        this.nb_cylindre = nb_cylindre;
    }

    public String getCouleur() {
        return couleur;
    }

    public void setCouleur(String couleur) {
        this.couleur = couleur;
    }

    public String getProprietaire() {
        return proprietaire;
    }

    public void setProprietaire(String proprietaire) {
        this.proprietaire = proprietaire;
    }

    public String getPlaque() {
        return plaque;
    }

    public void setPlaque(String plaque) {
        this.plaque = plaque;
    }

    public String getTel_pro() {
        return tel_pro;
    }

    public void setTel_pro(String tel_pro) {
        this.tel_pro = tel_pro;
    }

    public String getAdresse_pro() {
        return adresse_pro;
    }

    public void setAdresse_pro(String adresse_pro) {
        this.adresse_pro = adresse_pro;
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

    public String getAnnee() {
        return annee;
    }

    public void setAnnee(String annee) {
        this.annee = annee;
    }

    public String getCourriel() {
        return courriel;
    }

    public void setCourriel(String courriel) {
        this.courriel = courriel;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getType_essence() {
        return type_essence;
    }

    public void setType_essence(String type_essence) {
        this.type_essence = type_essence;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getSur_alerte() {
        return sur_alerte;
    }

    public void setSur_alerte(String sur_alerte) {
        this.sur_alerte = sur_alerte;
    }

    public String getDate_alerte() {
        return date_alerte;
    }

    public void setDate_alerte(String date_alerte) {
        this.date_alerte = date_alerte;
    }

    public String getDate_enre() {
        return date_enre;
    }

    public void setDate_enre(String date_enre) {
        this.date_enre = date_enre;
    }

}
