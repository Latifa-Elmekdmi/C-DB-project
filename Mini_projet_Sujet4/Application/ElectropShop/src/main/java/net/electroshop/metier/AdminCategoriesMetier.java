package net.electroshop.metier;

import net.electroshop.entities.Categorie;
import net.electroshop.entities.Client;
import net.electroshop.entities.Role;
import net.electroshop.entities.User;

public interface AdminCategoriesMetier extends AdminProduitMetier {
	public Long ajouterCategorie(Categorie c);

	public void supprimerCategrorie(Long idcat);

	public void modifierCategorie(Categorie c);

	public void ajouterUser(User u);

	public void attribuerRole(Role r, Long userID);
	
	public Long addUserMetier(Client client);
}