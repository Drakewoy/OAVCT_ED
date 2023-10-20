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
@Table(name = "alerte")
public class Alerte {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_alerte;
    private int id_vehicule;
    private String Type_alerte;
    private String lieu_incident;
    private String heure_incident;
    private String declarant;
    private String description;

    // constructeur
    public Alerte() {
    }

    public Alerte(int id_alerte, int id_vehicule, String Type_alerte, String lieu_incident, String heure_incident, String declarant, String description) {
        this.id_alerte = id_alerte;
        this.id_vehicule = id_vehicule;
        this.Type_alerte = Type_alerte;
        this.lieu_incident = lieu_incident;
        this.heure_incident = heure_incident;
        this.declarant = declarant;
        this.description = description;
    }

    // Getters and Setters
    public int getId_alerte() {
        return id_alerte;
    }

    public void setId_alerte(int id_alerte) {
        this.id_alerte = id_alerte;
    }

    public int getId_vehicule() {
        return id_vehicule;
    }

    public void setId_vehicule(int id_vehicule) {
        this.id_vehicule = id_vehicule;
    }

    public String getType_alerte() {
        return Type_alerte;
    }

    public void setType_alerte(String Type_alerte) {
        this.Type_alerte = Type_alerte;
    }

    public String getLieu_incident() {
        return lieu_incident;
    }

    public void setLieu_incident(String lieu_incident) {
        this.lieu_incident = lieu_incident;
    }

    public String getHeure_incident() {
        return heure_incident;
    }

    public void setHeure_incident(String heure_incident) {
        this.heure_incident = heure_incident;
    }

    public String getDeclarant() {
        return declarant;
    }

    public void setDeclarant(String declarant) {
        this.declarant = declarant;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
