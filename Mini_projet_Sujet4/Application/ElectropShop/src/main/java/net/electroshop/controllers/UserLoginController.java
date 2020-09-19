package net.electroshop.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.electroshop.entities.Client;
import net.electroshop.entities.Produit;
import net.electroshop.metier.AdminProduitMetier;

@Controller
public class UserLoginController {

	@Autowired
	private AdminProduitMetier metier;

	@RequestMapping("/userlogin")
	public String login() {

		return "userlogin";

	}

	@RequestMapping("/userlogin1")
	public String saveUser(@RequestParam String name, @RequestParam String pass, Model model) {
		
		
		model.addAttribute("produit", new Produit());
		model.addAttribute("categories", metier.listCategories());
		model.addAttribute("produits", metier.listproduits());
		List<Client> listClient = new ArrayList<Client>();
		listClient = metier.listClients();
		System.out.println(name);

		for (Client client : listClient) {
			if (name.equals(client.getNomClient()) && pass.equals(client.getPassword())) {
				return "compteUser";
			}

		}

		return "failureLogin";
	}

}



