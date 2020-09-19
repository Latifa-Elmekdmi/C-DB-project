package net.electroshop.metier;

import java.util.List;
import net.electroshop.entities.Categorie;
import net.electroshop.entities.Produit;

public interface UserCatalogueMetier {
	public List<Categorie> listCategories();

	public Categorie getCategorie(Long idCat);

	public List<Produit> listproduits();

	public List<Produit> produitsParMotCle(String mc);

	public List<Produit> produitsSelectionnes();

	public Produit getProduit(Long idP);

	public List<Produit> produitsParCategorie(Long idCat);
}