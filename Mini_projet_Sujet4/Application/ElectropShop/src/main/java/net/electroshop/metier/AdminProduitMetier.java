package net.electroshop.metier;

import net.electroshop.entities.Produit;


public interface AdminProduitMetier extends ClientBoutiqueMetier {
	public Long ajouterProduit(Produit p, Long idCat);

	public void supprimerProduit(Long idP);

	public void modifierProduit(Produit p);
}
