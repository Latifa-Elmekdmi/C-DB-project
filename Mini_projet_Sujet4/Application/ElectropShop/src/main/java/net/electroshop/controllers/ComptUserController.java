package net.electroshop.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import net.electroshop.entities.Panier;
import net.electroshop.entities.Produit;
import net.electroshop.metier.AdminProduitMetier;
import net.electroshop.metier.UserCatalogueMetier;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("panier")
public class ComptUserController {
	@Autowired
	private UserCatalogueMetier metier;
	
	@RequestMapping(value = "/ajouterAuPanier")
	public String ajouterPanier(@RequestParam Long idProduit,
			@RequestParam int quantite, Model model) {
		Panier panier = null;
		if (model.asMap().get("panier") == null) {
			panier = new Panier();
			model.addAttribute("panier", panier);
		} else
			panier = (Panier) model.asMap().get("panier");
		panier.addItem(metier.getProduit(idProduit), quantite);
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.produitsSelectionnes());
		return "index";
	}
}
