package net.electroshop.metier;

import java.util.List;

import net.electroshop.entities.Categorie;
import net.electroshop.entities.Client;
import net.electroshop.entities.Commande;
import net.electroshop.entities.Panier;
import net.electroshop.entities.Produit;



public interface ClientBoutiqueMetier {
	public List<Categorie> listCategories();

	public Categorie getCategorie(Long idCat);

	public List<Produit> listproduits();

	public List<Produit> produitsParMotCle(String mc);

	public List<Produit> produitsParCategorie(Long idCat);

	public List<Produit> produitsSelectionnes();

	public Produit getProduit(Long idP);

	public Commande enregistrerCommande(Panier p, Client c);
	public Long addUserMetier(Client client);
	
	public List<Client> listClients();
}
