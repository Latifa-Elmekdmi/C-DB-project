package net.electroshop.dao;

import java.util.List;
import net.electroshop.entities.*;

public interface ElectroShopDao {
	public Long ajouterCategorie(Categorie c);

	public List<Categorie> listCategories();

	public Categorie getCategorie(Long idCat);

	public void supprimerCategrorie(Long idcat);

	public void modifierCategorie(Categorie c);

	public Long ajouterProduit(Produit p, Long idCat);

	public List<Produit> listproduits();

	public List<Produit> produitsParMotCle(String mc);

	public List<Produit> produitsParCategorie(Long idCat);

	public List<Produit> produitsSelectionnes();

	public Produit getProduit(Long idP);

	public void supprimerProduit(Long idP);

	public void modifierProduit(Produit p);

	public void ajouterUser(User u);

	public void attribuerRole(Role r, Long userID);

	public Commande enregistrerCommande(Panier p, Client c);
	
	public Long addUser(Client client);
	
	public List<Client> listclients();

}