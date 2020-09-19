package net.electroshop.controllers;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.stream.FileImageInputStream;
import javax.validation.Valid;

import net.electroshop.entities.Categorie;
import net.electroshop.entities.Produit;
import net.electroshop.metier.AdminProduitMetier;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/adminProd")
public class AdminProduitsController {
	@Autowired
	private AdminProduitMetier metier;
	
	
		@RequestMapping("/login")
		public String login() {
			return "adminlogin";
		}
	
	
	@RequestMapping("/chercherProduits")
	public String chercherProduits(@RequestParam String mc, Model model) {
		model.addAttribute("mc", mc);
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.produitsParMotCle(mc));
		return "index";
	}
	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("produit", new Produit());
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.listproduits());
		return "produits";
	}

	@RequestMapping("/saveProduit")
	public String saveProduit(@Valid Produit p, BindingResult bindingResult,
			Model model, MultipartFile file) throws Exception {
		if (bindingResult.hasErrors()) {
			model.addAttribute("categories", metier.listCategories());
			model.addAttribute("produits", metier.listproduits());
			return "produits";
		}
		if (!file.isEmpty()) {
			String path = System.getProperty("java.io.tmpdir");
			p.setPhoto(file.getOriginalFilename());
			Long idP = null;
			if (p.getIdProduit() == null) {
				idP = metier.ajouterProduit(p, p.getCategorie()
						.getIdCategorie());
			} else {
				metier.modifierProduit(p);
				idP = p.getIdProduit();
			}

			file.transferTo(new File(path + "/PROD_" + idP + "_"
					+ file.getOriginalFilename()));

		} else {
			if (p.getIdProduit() == null)
				metier.ajouterProduit(p, p.getCategorie().getIdCategorie());
			else
				metier.modifierProduit(p);
		}
		model.addAttribute("produit", new Produit());
		model.addAttribute("produits", metier.listproduits());
		model.addAttribute("categories", metier.listCategories());
		return "produits";
	}

	@RequestMapping(value = "/photoProduit", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhoto(Long idP) throws IOException {
		Produit p = metier.getProduit(idP);
		File f = new File(System.getProperty("java.io.tmpdir") + "/PROD_" + idP
				+ "_" + p.getPhoto());

		return IOUtils.toByteArray(new FileInputStream(f));
	}

	@RequestMapping(value = "/deleteProd")
	public String deleteProd(Long idP, Model model) {
		metier.supprimerProduit(idP);
		model.addAttribute("produit", new Produit());
		model.addAttribute("produits", metier.listproduits());
		model.addAttribute("categories", metier.listCategories());
		return "produits";
	}

	@RequestMapping(value = "/editProd")
	public String editProd(Long idP, Model model) {
		Produit p = metier.getProduit(idP);
		// model.addAttribute("editedProd", p);
		model.addAttribute("produit", p);
		model.addAttribute("produits", metier.listproduits());
		model.addAttribute("categories", metier.listCategories());
		return "produits";
	}
	
	
}
