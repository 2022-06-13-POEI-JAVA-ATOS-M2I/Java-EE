package fr.m2i.distributeur;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.BeforeEach;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;


public class DistributeurTest {

    private Distributeur distributeur;

    @BeforeEach
    public void beforeEach() {
        distributeur = new Distributeur();
    }

    @Test
    public void testRemplirLeStock() {
        assertEquals(3, distributeur.getStock().size());
    }

    @Test
    public void testInsererArgent() {
        int montantInitial = distributeur.getCredit();
        distributeur.insererArgent(5);
        
        assertEquals(montantInitial + 5, distributeur.getCredit());
    }

    @Test
    public void testGetProduit() {
        Produit produit = distributeur.getProduit(1);
        assertNotNull(produit);
    }

    @Test
    public void testStockSuffisant() {
        assertTrue(distributeur.stockSuffisant(1));
    }

    @Test
    public void testCreditSuffisant() {
        distributeur.insererArgent(1);
        assertTrue(distributeur.creditSuffisant(1));
    }

    @Test
    public void testCommanderProduit() {
        distributeur.insererArgent(5);
        distributeur.commanderProduit(1);
        
        assertEquals(4, distributeur.getCredit());
        assertEquals(4, distributeur.getProduit(1).getQuantite());
    } 
    
    @Test
    public void testCommanderProduitProduitInexistant() {
        distributeur.insererArgent(5);
        distributeur.commanderProduit(0);
        
        assertEquals(5, distributeur.getCredit());
        assertEquals(5, distributeur.getProduit(1).getQuantite());
        assertEquals(5, distributeur.getProduit(2).getQuantite());
        assertEquals(5, distributeur.getProduit(3).getQuantite());
    }
    
    @Test
    public void testCommanderProduitStockVide() {
        distributeur.getProduit(1).setQuantite(0);
        distributeur.insererArgent(5);
        distributeur.commanderProduit(1);
        
        assertEquals(5, distributeur.getCredit());
        assertEquals(0, distributeur.getProduit(1).getQuantite());
    }
    
    @Test
    public void testCommanderProduitCreditZero() {
        distributeur.commanderProduit(1);

        assertEquals(0, distributeur.getCredit());
        assertEquals(5, distributeur.getProduit(1).getQuantite());
    }

    @Test
    public void testCommanderProduitCreditInsuffisant() {
        distributeur.insererArgent(1);
        distributeur.commanderProduit(2);
        
        assertEquals(1, distributeur.getCredit());
        assertEquals(5, distributeur.getProduit(2).getQuantite());
    }
}
