package net.electroshop.controllers;

import java.io.FileInputStream;

import net.electroshop.entities.Panier;
import net.electroshop.entities.Produit;
import net.electroshop.metier.ElectroShopMetierImpl;
import net.electroshop.metier.UserCatalogueMetier;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("panier")
public class ElectroshopController {
	@Autowired
	private UserCatalogueMetier metier;

	@RequestMapping("/index")
	public String index(Model model) {
		if (model.asMap().get("panier") == null) {
			model.addAttribute("panier", new Panier());
		}
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.produitsSelectionnes());
		return "index";
	}

	@RequestMapping("/produitsParCat")
	public String produitsParCat(@RequestParam Long idCat, Model model) {
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.produitsParCategorie(idCat));
		return "index";
	}

	@RequestMapping("/chercherProduits")
	public String chercherProduits(@RequestParam String mc, Model model) {
		model.addAttribute("mc", mc);
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.produitsParMotCle(mc));
		return "index";
	}

	@RequestMapping(value = "/photoProduit", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] photoProd(Long idP) throws Exception {
		Produit p = metier.getProduit(idP);
		String path = System.getProperty("java.io.tmpdir") + "/PROD_" + idP+ "_" + p.getPhoto();
		return IOUtils.toByteArray(new FileInputStream(path));
	}

//	@RequestMapping("/ajouterAuPanier")
//	public String chercherProduits(@RequestParam Long idProduit,
//			@RequestParam int quantite, Model model) {
//		Panier panier = null;
//		if (model.asMap().get("panier") == null) {
//			panier = new Panier();
//			model.addAttribute("panier", panier);
//		} else
//			panier = (Panier) model.asMap().get("panier");
//		panier.addItem(metier.getProduit(idProduit), quantite);
//		model.addAttribute("categories", metier.listCategories());
//		model.addAttribute("produits", metier.produitsSelectionnes());
//		return "index";
//	}
}