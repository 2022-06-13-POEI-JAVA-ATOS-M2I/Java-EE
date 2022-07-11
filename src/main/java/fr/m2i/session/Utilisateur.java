package fr.m2i.session;

public class Utilisateur {

    private String email;
    private String motPasse;

    public Utilisateur() {

    }

    public Utilisateur(String email, String motPasse) {
        this.email = email;
        this.motPasse = motPasse;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotPasse() {
        return motPasse;
    }

    public void setMotPasse(String motPasse) {
        this.motPasse = motPasse;
    }
}
