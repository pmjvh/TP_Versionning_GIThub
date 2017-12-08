/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

public class jeu {

    private int nbrAleatoire;
    private int nbEssai;

    public jeu() {
        nbEssai = 0;
//(int) (Math.random() * 20) donne un nombre compris entre 1 et 20
        nbrAleatoire = (int) Math.round(Math.random() * 20);
    }

    public void setNbEssai(int nbEssai) {
        this.nbEssai = nbEssai;
    }

    public int getNbEssai() {
        return nbEssai;
    }

    public int getNbrAleatoire() {
        return nbrAleatoire;
    }
}
